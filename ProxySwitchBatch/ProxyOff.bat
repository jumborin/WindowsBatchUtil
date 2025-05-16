@echo off

REM =======================================================================================
REM 処理概要：「LANにプロキシサーバーを使用する」のチェックボックスを外し、ProxyをOFFにする。
REM 前提条件：管理者権限で実行すること
REM 注意事項：なし
REM =======================================================================================

REM 「LANにプロキシサーバーを使用する」のチェックボックスを外し、ProxyをOFFにする。
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v ProxyEnable /t reg_dword /d 0
