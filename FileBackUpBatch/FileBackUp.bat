@echo off

REM =======================================================================================
REM 処理概要：バックアップ元フォルダからバックアップ先フォルダにバックアップする。
REM 前提条件：なし
REM 注意事項：なし
REM =======================================================================================

REM バックアップ元フォルダ
set SOURCE_DIR=.\source

REM バックアップ先フォルダ
set DIST_DIR=.\dist

REM コピー対象のファイルをログに出力する。
xcopy %SOURCE_DIR% %DIST_DIR% /E /L /H /R /K /-Y /B > copyLog.log

REM コピーする
xcopy %SOURCE_DIR% %DIST_DIR% /E /F /H /R /K /-Y /B
