
# =======================================================================================
# 処理概要：現在活性化しているウインドウの情報をログファイルに出力する。
# 前提条件：なし
# 注意事項：なし
# =======================================================================================
$filename = Get-Date -Format "yyyyMMdd"

Get-Process | Where-Object {$_.MainWindowTitle -ne ""} | Select-Object -Property ProcessName,MainWindowTitle | Out-File "log_$filename.txt"

