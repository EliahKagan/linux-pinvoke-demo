using System.Runtime.InteropServices;

[DllImport("libc")]
static extern int getpid();

[DllImport("libc")]
static extern int getppid();

Console.WriteLine($"PID={getpid()}, PPID={getppid()}");
