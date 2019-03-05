@echo off

REM ==========================================================
REM 画面の輝度を最小(0％)にする。
REM ==========================================================

REM 電源設定プランのGUID
SET SCHEME_GUID=8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

REM ディスプレイのGUID
SET SUB_GUID=7516b95f-f776-4464-8c53-06167f40cc99

REM 画面の明るさのGUID
SET SETTING_GUID=aded5e82-b909-4619-9949-f5d71dac0bcb

REM 画面の明るさ(％)
SET BRIGHTNESS=0


REM バッチ設定用
REM 現在アクティブな電源設定のSCHEME_GUIDを取得する。
powercfg /GETACTIVESCHEME

REM 画面の明るさのGUIDを取得する。
powercfg /q %SCHEME_GUID% %SUB_GUID%


REM 実処理
REM 明るさをセットする。
powercfg /setacvalueindex %SCHEME_GUID% %SUB_GUID% %SETTING_GUID% %BRIGHTNESS%
powercfg /setdcvalueindex %SCHEME_GUID% %SUB_GUID% %SETTING_GUID% %BRIGHTNESS%

REM 設定変更を有効にする
powercfg /setactive %SCHEME_GUID%