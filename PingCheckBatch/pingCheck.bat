@echo off

REM ==========================================================
REM 指定IPアドレスの生存確認を行うバッチ
REM ==========================================================

REM 結果ファイルの出力ディレクトリ
set ROOT_DIR=.\

REM 生存確認したい端末のIPアドレス
set IP_ADDRESS=192.168.11.1

REM 日付時刻15桁(yyyymmdd_HHMMSS)を変数に代入
set TIME=%DATE:~-10,4%%DATE:~-5,2%%DATE:~-2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2% 



REM テンプファイルに結果を書き出し
ping %IP_ADDRESS% | find "パケット数:" > temp.txt

REM 結果を読み込み、変数に代入
FOR /f "delims=" %%t IN (temp.txt) DO SET RESULT=%%t

REM テンプファイルを削除
del /F temp.txt

REM 結果ファイルに日時と結果を書き出し
echo %TIME%%RESULT% >> %ROOT_DIR%checkResult.txt

