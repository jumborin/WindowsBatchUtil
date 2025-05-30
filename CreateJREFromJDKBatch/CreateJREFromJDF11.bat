@echo off

REM =======================================================================================
REM 処理概要：JDKから必要なモジュールのみ組み込んだJREを作成する。
REM 前提条件：なし
REM 注意事項：なし
REM =======================================================================================

REM JDK11のPathを変数に設定する
SET JDK_PATH="C:\Program Files\Java\jdk-11.0.2\jmods"

REM JREを出力するフォルダ
SET OUTPUT_DIR=jre-min

REM JREを作成する
jlink --compress=2 --module-path %JDK_PATH% --add-modules java.base,java.sql,java.desktop --output %OUTPUT_DIR%

