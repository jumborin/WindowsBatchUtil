@echo off
REM 前月の1日から現在までのPCの起動時刻をイベントログから取得し、CSV形式で出力する。

REM -------------------------------------------------------
REM Path設定
REM -------------------------------------------------------

REM tempファイル1
SET TEMP_FILE=.\temp1.tmp

REM tempファイル2
SET TEMP_FILE2=.\temp2.tmp

REM 起動時刻のみを出力するテキストファイル
SET RESULT_FILE=.\result.csv

REM PC起動時のイベントログID
SET START_LOG_ID=6005


REM -------------------------------------------------------
REM 処理開始
REM -------------------------------------------------------

REM 先月の1日の日付を求める。
SET year=%date:~0,4%
SET month=%date:~5,2%
if %month% equ 01 (
  SET month2=12
  SET /a "year2 = year - 1"
) else if %month% geq 11 (
  SET /a "month2 = month - 1"
  SET year2=%year%
) else (
  SET /a "month2_1 = month - 1"
  SET month2=0%month2_1%
  SET year2=%year%
)

REM CSV形式でイベントログを吐き出す。
wmic ntevent where "(logfile='system' and timewritten >= '%year2%%month2%01' and (eventcode='%START_LOG_ID%'))" list /format:CSV | find "," > %TEMP_FILE%

REM for内の変数を遅延展開する
setlocal enabledelayedexpansion
  REM カンマが続いている部分をアンダースコアで置換する。
  for /f "delims=" %%i in (%TEMP_FILE%) do (
    SET tempStr=%%i
    echo !tempStr:,,=,_,! >> %TEMP_FILE2%
  )

REM ファイルに書き出す前にヘッダーを出力する
echo 分類,年,月,日,時,分,秒 > %RESULT_FILE%

REM ファイルに結果を出力する。
for /f "tokens=6,15 delims=," %%i in (%TEMP_FILE2%) do (
  SET tempTimeStr=%%j
  if %%i equ %START_LOG_ID% (
    echo "起動時刻",!tempTimeStr:~0,4!,!tempTimeStr:~4,2!,!tempTimeStr:~6,2!,!tempTimeStr:~8,2!,!tempTimeStr:~10,2!,!tempTimeStr:~12,2!>> %RESULT_FILE%
  ) else (
    echo "何もしない"
  )
)
endlocal

REM -------------------------------------------------------
REM 後処理
REM -------------------------------------------------------

REM テンプファイルを削除する
del /Q %TEMP_FILE%
del /Q %TEMP_FILE2%
