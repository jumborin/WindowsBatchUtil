@echo off

REM =======================================================================================
REM 処理概要：ファイルの更新日時をファイル名の先頭にセットする。
REM 前提条件：なし
REM 注意事項：なし
REM =======================================================================================

REM ルートディレクトリの定義
SET ROOT_DIR=.\

REM 名称を変更するファイルの定義
SET FILE_PATTERN=*.jpg

REM ルートディレクトリに移動
cd %ROOT_DIR%

REM ファイルの更新日時を取得し、ファイル名の先頭にセット
setlocal enabledelayedexpansion
for %%i In (%FILE_PATTERN%) do (
  SET tempLine=%%~ti
  SET tempLine2=!tempLine: =_!
  SET tempLine3=!tempLine2:/=!
  SET tempLine4=!tempLine3::=!
  SET tempLine5=!tempLine4!_%%i
  rename %ROOT_DIR%%%i !tempLine5!
)
endlocal