@echo off
REM 前月の1日から現在までのPCの起動時刻および終了時刻をCSV形式で出力する。

REM -------------------------------------------------------
REM Path設定
REM -------------------------------------------------------

REM tempファイル1
set CSV_FILE=C:\Users\jumborin\Desktop\temp1.csv

REM tempファイル2
set CSV_FILE2=C:\Users\jumborin\Desktop\temp2.csv

REM 起動時刻と終了時刻のみをテキストファイルに出力する。
set RESULT_FILE=C:\Users\jumborin\Desktop\result.csv

REM -------------------------------------------------------
REM 処理開始
REM -------------------------------------------------------

REM 先月の1日の日付を求める。
set year=%date:~0,4%
set month=%date:~5,2%
if %month% equ 01 (
  set month2=12
  set /a "year2 = year - 1"
) else if %month% geq 11 (
  set /a "month2 = month - 1"
  set year2=%year%
) else (
  set /a "month2_1 = month - 1"
  set month2=0%month2_1%
  set year2=%year%
)

REM CSV形式でイベントログを吐き出す。
wmic ntevent where "(logfile='system' and timewritten >= '%year2%%month2%01' and (eventcode='6005' or eventcode='6006'))" list /format:CSV | find "," > %CSV_FILE%

REM for内の変数を遅延展開する
setlocal enabledelayedexpansion
  REM カンマが続いている部分をアンダースコアで置換する。
  for /f "delims=" %%i in (%CSV_FILE%) do (
    set tempStr=%%i
    echo !tempStr:,,=,_,! >> %CSV_FILE2%
  )
  
REM ファイルに結果を出力する。
echo 分類,年,月,日,時,分,秒 > %RESULT_FILE%
for /f "tokens=6,15 delims=," %%i in (%CSV_FILE2%) do (
  set tempTimeStr=%%j
  if %%i equ 6005 (
    REM echo 起動時刻：!tempTimeStr:~0,4!/!tempTimeStr:~4,2!/!tempTimeStr:~6,2!_!tempTimeStr:~8,2!:!tempTimeStr:~10,2!:!tempTimeStr:~12,2!>> %RESULT_FILE%
    echo 起動時刻,!tempTimeStr:~0,4!,!tempTimeStr:~4,2!,!tempTimeStr:~6,2!,!tempTimeStr:~8,2!,!tempTimeStr:~10,2!,!tempTimeStr:~12,2!>> %RESULT_FILE%
  ) else if %%i equ 6006 (
    REM echo 終了時刻：!tempTimeStr:~0,4!/!tempTimeStr:~4,2!/!tempTimeStr:~6,2!_!tempTimeStr:~8,2!:!tempTimeStr:~10,2!:!tempTimeStr:~12,2! >> %RESULT_FILE%
    echo 終了時刻,!tempTimeStr:~0,4!,!tempTimeStr:~4,2!,!tempTimeStr:~6,2!,!tempTimeStr:~8,2!,!tempTimeStr:~10,2!,!tempTimeStr:~12,2! >> %RESULT_FILE%
  ) else (
    echo "何もしない"
  )
)
endlocal

REM -------------------------------------------------------
REM 後処理
REM -------------------------------------------------------

REM テンプファイルを削除する
del /Q %CSV_FILE%
del /Q %CSV_FILE2%

