@echo off

REM =======================================================================================
REM 処理概要：Chocolateyでインストール可能なソフトウェアパッケージリストを出力する。
REM 前提条件：Chocolateyがインストール済であること
REM 注意事項：なし
REM =======================================================================================

REM Chocolateyでインストール可能なソフトウェアパッケージリストを出力する。
choco list > CanInstallSoftwarePackageList.txt

REM Chocolateyでインストール済のソフトウェアパッケージリストを出力する。
choco list -lo > InstalledSoftwarePackageList.txt
echo on