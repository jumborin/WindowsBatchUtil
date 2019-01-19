
$filename = Get-Date -Format "yyyyMMdd"

Get-Process | Where-Object {$_.MainWindowTitle -ne ""} | Select-Object -Property ProcessName,MainWindowTitle | Out-File "log_$filename.txt"

