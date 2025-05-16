@echo off

REM =======================================================================================
REM 処理概要：スタートアップに登録することで指定のアプリをPC起動時に実行する。
REM 前提条件：なし
REM 注意事項：不要な処理はコメントアウトすること。
REM =======================================================================================

REM Outlook2013For32Bitを開く
REM start "" "c:\program files\microsoft office\office15\outlook.exe"

REM Outlook2013For64Bitを開く
REM start "" "c:\program files (x86)\microsoft office\office15\outlook.exe"

REM Outlook2016を開く
start "" "c:\program files\microsoft office\office16\outlook.exe"

REM InternetExplorerでGithubを開く。
start "" "C:\Program Files\Internet Explorer\iexplore.exe" "https://github.com/"

REM Google ChromeでGithubを開く。
start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "https://github.com/"