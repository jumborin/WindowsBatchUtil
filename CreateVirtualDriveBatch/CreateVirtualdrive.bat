@echo off

REM ==========================================================
REM 指定フォルダを仮想ドライブにする。
REM ==========================================================

REM 仮想ドライブのルートフォルダに設定する実フォルダ
SET VIRTUAL_DRIVE=C:\VirtualD

REM 仮想ドライブに設定するドライブパス
SET DRIVE_PATH=D:

REM 仮想ドライブに設定するフォルダが存在しなかった場合は作成する。
IF EXIST %VIRTUAL_DRIVE% (
  mkdir %VIRTUAL_DRIVE%
)

REM 仮想ドライブを作成する。
subst %DRIVE_PATH% %VIRTUAL_DRIVE%