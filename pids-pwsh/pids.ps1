#!/usr/bin/env pwsh

Add-Type -TypeDefinition @'
using System.Runtime.InteropServices;

public static class PInvoke {
    [DllImport("libc")]
    public static extern int getpid();

    [DllImport("libc")]
    public static extern int getppid();
}
'@

Write-Host "PID=$([PInvoke]::getpid()), PPID=$([PInvoke]::getppid())"
