@echo off

REM =======================================================================================
REM 処理概要：圧縮ファイルを本日日付8桁のパスワード付き7zファイルとして作成する。
REM 前提条件：同フォルダに7za.exeが格納されていること。
REM 注意事項：なし
REM =======================================================================================

REM 本日日付8桁(YYYYMMDD)
SET YYYYMMDD=%DATE:/=%

REM 圧縮後のファイル名
SET COMPRESS_FILE_NAME=%YYYYMMDD%_compress.7z

REM 圧縮対象のフォルダ
SET COMPRESS_DIR=7z

REM 解凍パスワード(本日日付8桁)
SET PASS=%YYYYMMDD%

REM 7zipを使って圧縮ファイルを作成する
7za.exe a -t7z -p%PASS% %COMPRESS_FILE_NAME% %COMPRESS_DIR%

