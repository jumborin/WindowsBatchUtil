@echo off

REM =======================================================================================
REM 処理概要：メモリをクリーンする。タスクスケジューラで1時間毎に実行するように登録しておくと便利
REM 前提条件：Windows Resource Kits をインストールしていること。
REM 注意事項：なし
REM DL元URL：https://www.microsoft.com/en-us/download/details.aspx?displaylang=en&id=17657
REM =======================================================================================

REM empty.exeを実行する。
C:\Program Files (x86)\Windows Resource Kits\Tools\empty.exe
