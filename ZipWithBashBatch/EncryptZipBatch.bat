@echo off

REM ==================================================
REM フォルダごとパスワード付きzipファイルにする。
REM 前提条件：zipコマンドが利用可能であること。
REM ==================================================

REM Zipファイルの解凍パスワード
SET ZIP_PASS=test

REM zipファイル名
SET ZIP_FILE=zip.zip

REM 対象フォルダ
SET TARGET_DIR=zip

REM フォルダごとパスワード付きzipファイルにする。
zip -e --password=%ZIP_PASS% -r %ZIP_FILE% %TARGET_DIR%