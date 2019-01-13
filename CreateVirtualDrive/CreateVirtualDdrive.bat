@echo off

REM ==========================================================
REM VirtualDのフォルダを仮想Dドライブにする。
REM ==========================================================

SET VIRTUAL_DRIVE=C:\VirtualD

REM 仮想ドライブを作成する。
subst D: %VIRTUAL_DRIVE%