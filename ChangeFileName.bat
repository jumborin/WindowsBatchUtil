@echo off
REM ファイルの更新日時をファイル名の先頭にセットする。
set ROOT_DIR=C:\Users\FZK07\Desktop
cd %ROOT_DIR%
setlocal enabledelayedexpansion
for %%i In (*.jpg) do (
  set tempLine=%%~ti
  set tempLine2=!tempLine: =_!
  set tempLine3=!tempLine2:/=!
  set tempLine4=!tempLine3::=!
  set tempLine5=!tempLine4!_%%i
  rename .\%%i !tempLine5!
)
endlocal