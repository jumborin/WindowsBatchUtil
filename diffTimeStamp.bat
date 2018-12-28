REM 
REM timestamp.txtと比較する。
REM 

REM 日付4桁を出力
SET TODAY=%DATE:~-10,4%%DATE:~-5,2%%DATE:~-2%

REM ファイル探索ディレクトリ
SET SEARCHDIR=.\

REM ファイル生成ディレクトリ
SET ROOTDIR=.\

REM 前回実行時のファイルリスト
SET OLD_TEXT=%ROOTDIR%timestamp.txt

REM バックアップ先ファイルリスト
SET NEW_TEXT=%ROOTDIR%%TODAY%_timestamp.txt

REM 比較結果ファイル
SET RESULT=%ROOTDIR%result.txt

REM バックアップする
if not exist %OLD_TEXT% type nul > %OLD_TEXT%
MOVE %OLD_TEXT% %NEW_TEXT%

REM 現在のファイルのタイムスタンプを取得し、ファイル出力する。
dir /S /OGN %SEARCHDIR% | find /V "<DIR>" | find /V "個のファイル" | find /V "個のディレクトリ" | find /V "ファイルの総数" > %OLD_TEXT%

REM タイムスタンプの比較を行い、比較結果としてファイル出力する。
FC /N /L /1 /OFF %OLD_TEXT% %NEW_TEXT% > %RESULT%

