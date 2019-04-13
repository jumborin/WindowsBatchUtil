@echo off

REM =========================================================================
REM packages.configで定義したソフトウェアをChocolateyでインストールする。
REM 注意事項：同階層にpackages.configがあること。
REM =========================================================================

REM packages.configで定義したソフトウェアをChocolateyでインストールする。
choco install -y packages.config

echo on