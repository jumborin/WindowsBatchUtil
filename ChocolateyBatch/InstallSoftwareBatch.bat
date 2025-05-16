@echo off

REM =======================================================================================
REM 処理概要：packages.configで定義したソフトウェアをChocolateyでインストールする。
REM 前提条件：管理者権限で実行すること。
REM 注意事項：同階層にpackages.configがあること。
REM =======================================================================================

cd /d %~dp0

REM packages.configで定義したソフトウェアをChocolateyでインストールする。
choco install -y packages.config

echo on