## Windowsで利用可能なユーティリティバッチ集 
=============================== 
ChangeBrightnessBatch\BrightnessMaxBatch.bat 
REM 処理概要：画面の輝度を最大(100％)にする。
 
ChangeBrightnessBatch\BrightnessMinBatch.bat 
REM 処理概要：画面の輝度を最小(0％)にする。
 
ChangeBrightnessBatch\BrightnessOutputReportBatch.bat 
REM 処理概要：電源設定関連のレポートを出力する。
 
ChangeSleepStatus\ChangeSleepStatus.bat 
REM 処理概要：PCをスリープ状態にする。
 
ChocolateyBatch\InstallChocolateyBatch.bat 
REM 処理概要：Chocolatey本体をインストールする。
 
ChocolateyBatch\InstallSoftwareBatch.bat 
REM 処理概要：packages.configで定義したソフトウェアをChocolateyでインストールする。
 
ChocolateyBatch\OutputSoftwarePackageListBatch.bat 
REM 処理概要：Chocolateyでインストール可能なソフトウェアパッケージリストを出力する。
 
ChocolateyBatch\UpdateChocolateyBatch.bat 
REM 処理概要：Chocolatey本体をアップデートする。
 
ChocolateyBatch\UpdateSoftwareBatch.bat 
REM 処理概要：Chocolateyで管理しているソフトウェアを一括アップデートする。
 
CollectFileBatch\CollectOfficeFile.bat 
REM 処理概要：officeDirを作成し、自ファイル以下のofficeファイルをコピーする。
 
CollectFileBatch\CollectPdfFile.bat 
REM 処理概要：pdfDirを作成し、自ファイル以下のPDFファイルをコピーする。
 
CompileCsharpBatch\CompileCsharp.bat 
REM 処理概要：C#のソースコードをコンパイルする。
 
CompileVisualBasicBatch\CompileVisualBasic.bat 
REM 処理概要：VisualBasicを名称を指定してコンパイルする。
 
CompressBatch\Compress7zBatch.bat 
REM 処理概要：圧縮ファイルを本日日付8桁のパスワード付き7zファイルとして作成する。
 
CompressBatch\CompressZipBatch.bat 
REM 処理概要：圧縮ファイルを本日日付8桁のパスワード付きzipファイルとして作成する。
 
CreateDocumentFolderBatch\CreateDocumentFolder.bat 
REM 処理概要：バッチファイル直下にドキュメント整理用のフォルダを作成する。
 
CreateJREFromJDK\CreateJREFromJDF11.bat 
REM 処理概要：JDKから必要なモジュールのみ組み込んだJREを作成する。
 
CreateVirtualDriveBatch\CreateVirtualdrive.bat 
REM 処理概要：指定フォルダを仮想ドライブとしてドライブパスに割り当てる。
 
DiffTimeStampBatch\DiffTimeStamp.bat 
REM 処理概要：指定フォルダ以下のファイル一覧を作成し、前回作成したファイル一覧(timestamp.txt)と比較する。
 
EmptyBatch\empty.bat 
REM 処理概要：メモリをクリーンする。タスクスケジューラで1時間毎に実行するように登録しておくと便利
 
EventLogBatch\CreatePcOffEventList.bat 
REM 処理概要：前月の1日から現在までのPCの終了時刻をイベントログから取得し、CSV形式で出力する。
 
EventLogBatch\CreatePcOnEventList.bat 
REM 処理概要：前月の1日から現在までのPCの起動時刻をイベントログから取得し、CSV形式で出力する。
 
EventLogBatch\CreatePcOnOffEventList.bat 
REM 処理概要：前月の1日から現在までのPCの起動時刻および終了時刻をイベントログから取得し、CSV形式で出力する。
 
FileBackUpBatch\FileBackUp.bat 
REM 処理概要：バックアップ元フォルダからバックアップ先フォルダにバックアップする。
 
GetActiveWindow\GetActiveWindow.bat 
REM 処理概要：現在活性化しているウインドウの情報をログファイルに出力する。
 
MergeTextFileBatch\MergeCsvFile.bat 
REM 処理概要：同フォルダ以下のCSVファイルをマージする。
 
OutputOSReportBatch\OutputOSReportBatch.bat 
REM 処理概要：Windowsの設定をレポートとして出力する。
 
PingCheckBatch\pingCheck.bat 
REM 処理概要：指定IPアドレスの生存確認を行うバッチ
 
ProxySwitchBatch\ProxyOff.bat 
REM 処理概要：「LANにプロキシサーバーを使用する」のチェックボックスを外し、ProxyをOFFにする。
 
ProxySwitchBatch\ProxyOn.bat 
REM 処理概要：「LANにプロキシサーバーを使用する」のチェックボックスにチェックを入れ、PROXYをオンにする。「ローカルアドレスにはプロキシサーバを指定しない」にチェックを入れる
 
RenameFileNameBatch\RenameFileName.bat 
REM 処理概要：ファイルの更新日時をファイル名の先頭にセットする。
 
RenameImageFileBatch\rename_imagesByCreateTime.bat 
REM 処理概要：直下のディレクトリのファイルのファイル名をファイル作成日時(yyyyMMdd_HHmmss)にする
 
ShutdownBatch\LogOffBatch.bat 
REM 処理概要：1分後ログオフする。
 
ShutdownBatch\RebootAfterOneMinuteBatch.bat 
REM 処理概要：1分後再起動する。
 
ShutdownBatch\ShutdownAfterOneMinuteBatch.bat 
REM 処理概要：1分後シャットダウンする。
 
StartUpBatch\StartUp.bat 
REM 処理概要：スタートアップに登録することで指定のアプリをPC起動時に実行する。
 
WingetUpdateAllBatch\WingetUpdateAllBatch.bat 
REM 処理概要：wingetを使用してインストール済ソフトウェアをアップデートする。
 
ZipWithBashBatch\EncryptZipBatch.bat 
REM 処理概要：フォルダごとパスワード付きzipファイルにする。
 
以上 
