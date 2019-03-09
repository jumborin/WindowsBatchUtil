@echo off

REM ==========================================================
REM 電源設定関連のレポートを出力する。(要：管理者として実行)
REM ==========================================================

REM カレントディレクトリをバッチファイルの位置まで移動する。
cd /d %~dp0

REM システム電源切替の診断レポート(sleepstudy-report.html)を生成する。
powercfg /SYSTEMPOWERREPORT
REM powercfg /SLEEPSTUDY

REM システムスリープ移行の診断レポート(system-sleep-diagnostics.html)を生成する。
powercfg /SYSTEMSLEEPDIAGNOSTICS


REM バッテリの使用状況のレポート(battery-report.html)を作成する。
powercfg /BATTERYREPORT

REM エネルギー効率とバッテリ寿命に関する一般的な問題がないかシステムを分析し、レポート(energy-report.html)を出力する。。
powercfg /ENERGY