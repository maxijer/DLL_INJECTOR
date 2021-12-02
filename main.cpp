#include <iostream>
#include <Windows.h>

using namespace std;

int get_dll_len(char *dll) { // определяем длинну dll
    return strlen(dll) + 1;
}


int
my_pid() { // process id,вы можете найти его в диспетчере задач, смотря на тот процесс, куда вы планируете сделать инжект
    cout << "Input PID your process" << endl;
    int pid;
    cin >> pid;
    return pid;
}

int correct_process(HANDLE *handle, DWORD pid) { // получаем процессс
    *handle = OpenProcess(PROCESS_ALL_ACCESS, false, pid); // открываем процесс
    if (*handle != NULL) {
        cout << "I open process" << endl;
        return 1;
    } else {
        cout << "I can`t open process" << endl;
        return -1;
    }
}

char *dll_path() { // получаем путь до dll файла(очень важно указывать абсолютный путь)
    cout << "Input absolute path to dll file" << endl;
    char *dll = new char[255];
    cin >> dll;
    return dll;
}

int inject(DWORD pid, char *dll) { // инжект dll файла
    HANDLE handle, thread; // создаём дескрипторы
    LPVOID load, base;
    int len = get_dll_len(dll);
    int proc = correct_process(&handle, pid);
    if (proc == -1) { // проверяем что процесс существуте
        return -1;
    }

    load = (LPVOID) GetProcAddress(GetModuleHandleA("kernel32.dll"), "LoadLibraryA"); // подгружаем библиотку kernel32
    if (!load) {
        return -1;
    }

    base = VirtualAllocEx(handle, NULL, len, MEM_COMMIT | MEM_RESERVE, PAGE_EXECUTE_READWRITE); // получаем физическую память в виртуальном адресном пространстве
    if (!base) {
        return -1;
    }
    // пишем путь к dll
    if (!WriteProcessMemory(handle, base, dll, len, NULL)) {
        return -1;
    }
    // удалённый поток
    thread = CreateRemoteThread(handle, NULL, NULL, (LPTHREAD_START_ROUTINE) load, base, 0, NULL);
    if (!thread) {
        return -1;
    }
    WaitForSingleObject(thread, INFINITE); // ждём освобождение памяти

    VirtualFreeEx(handle, base, len, MEM_RELEASE); // освобождаем память

    if (CloseHandle(thread) == 0) { // закрытие обработчика
        cout << "Fail close thread";
        return -1;
    }
    if (CloseHandle(handle) == 0) {
        cout << "Fail close handle";
        return -1;
    }
    return 1;
}


signed main() {
    char *dll = dll_path();
    int pid = my_pid();
    if (inject(pid, dll) == -1) {
        cout << "FAIL inject" << endl;
    } else {
        cout << "OK" << endl;
    }
}
