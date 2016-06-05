@echo off

REM 処理内容：メモリをクリーンする。
REM 前提条件：Windows Resource Kits をインストールしていること。https://www.microsoft.com/en-us/download/details.aspx?displaylang=en&id=17657
REM タスクスケジューラで1時間毎に実行するように登録しておくと便利

REM empty.exeを実行する。
C:\Program Files (x86)\Windows Resource Kits\Tools\empty.exe
