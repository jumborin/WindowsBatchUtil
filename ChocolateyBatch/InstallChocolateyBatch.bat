@echo off

REM =======================================================================================
REM �����T�v�FChocolatey�{�̂��C���X�g�[������B
REM �O������F�Ȃ�
REM ���ӎ����F�Ȃ�
REM =======================================================================================

REM Chocolatey�{�̂��C���X�g�[������B
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

echo on