@echo off

REM =========================================================================
REM Chocolateyでインストール可能なソフトウェアパッケージリストを出力する。
REM =========================================================================

REM Chocolateyでインストール可能なソフトウェアパッケージリストを出力する。
choco list > CanInstallSoftwarePackageList.txt

REM Chocolateyでインストール済のソフトウェアパッケージリストを出力する。
choco list -lo > InstalledSoftwarePackageList.txt
echo on