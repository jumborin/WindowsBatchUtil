@echo off

REM =======================================================================================
REM 処理概要：Chocolatey本体をインストールする。
REM 前提条件：なし
REM 注意事項：なし
REM =======================================================================================

REM Chocolatey本体をインストールする。
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

echo on