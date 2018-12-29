@echo off

REM 管理者権限での実行が必要。

REM 「LANにプロキシサーバーを使用する」のチェックボックスを外す
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v ProxyEnable /t reg_dword /d 0

