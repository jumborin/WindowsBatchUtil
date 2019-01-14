@echo off

REM ==========================================================
REM 指定フォルダを仮想ドライブにする。
REM ==========================================================

SET VIRTUAL_DRIVE=C:\VirtualD
SET DRIVE_PATH=D:

REM 
IF EXIST %VIRTUAL_DRIVE% (
  mkdir %VIRTUAL_DRIVE%
)

REM 仮想ドライブを作成する。
subst %DRIVE_PATH% %VIRTUAL_DRIVE%