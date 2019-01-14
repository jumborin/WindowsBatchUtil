@echo off

REM ==========================================================
REM 「LANにプロキシサーバーを使用する」のチェックボックスにチェックを入れ、PROXYをオンにする。
REM 「ローカルアドレスにはプロキシサーバを指定しない」にチェックを入れる
REM 管理者権限での実行が必要。
REM ==========================================================

REM 「LANにプロキシサーバーを使用する」のチェックボックスにチェックを入れ、PROXYをオンにする。
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v ProxyEnable /t reg_dword /d 1

REM PROXYのアドレスとポート番号を設定する。
REM プロキシサーバとポート番号を末尾に指定することで設定可能
REM reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v ProxyServer /t reg_sz /d

REM 「ローカルアドレスにはプロキシサーバを指定しない」にチェックを入れる
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v ProxyOverride /t reg_sz /d "<local>"

