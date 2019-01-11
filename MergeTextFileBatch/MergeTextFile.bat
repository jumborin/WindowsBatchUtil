@echo off

REM ==========================================================
REM 同フォルダ以下のCSVファイルをマージする
REM ==========================================================

REM 変数の定義
SET TARGET_FILE=*.csv
SET MERGE_TEMP_FILE=.\merge\merge.tmp
SET MERGE_RESULT_FILE=.\merge\mergeResult.csv

REM マージ結果を入れるフォルダを作成
mkdir merge

REM ファイルを単純にマージ
copy /b %TARGET_FILE% %MERGE_TEMP_FILE%

REM 1行目(ヘッダーを取得する。
for /f %%a in ( %MERGE_TEMP_FILE% ) do (
  @SET HEADER_DATA=%%a
  goto :exit
)
:exit

REM ヘッダー行を書き出し
echo %HEADER_DATA%>>%MERGE_RESULT_FILE%

REM ヘッダー行を除外し、結果ファイルに書き出す
for /f %%c in ( %MERGE_TEMP_FILE% ) do (
  if not "%HEADER_DATA%"=="%%c" (
    echo %%c>>%MERGE_RESULT_FILE%
  )
)

REM 最後に一時ファイルを削除
del %MERGE_TEMP_FILE%
