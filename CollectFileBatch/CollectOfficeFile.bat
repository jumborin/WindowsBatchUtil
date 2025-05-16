@echo off

REM =======================================================================================
REM 処理概要：officeDirを作成し、自ファイル以下のofficeファイルをコピーする。
REM 前提条件：なし
REM 注意事項：なし
REM =======================================================================================

REM フォルダ名を定義
SET RESULT_DIR=officeDir

REM フォルダを作成
mkdir %RESULT_DIR%

REM 各拡張子のファイルをコピーする。
for /R %%f in (*.xls) do xcopy /D /I /Y "%%f" %RESULT_DIR%
for /R %%f in (*.xlsx) do xcopy /D /I /Y "%%f" %RESULT_DIR%
for /R %%f in (*.xlsm) do xcopy /D /I /Y "%%f" %RESULT_DIR%
for /R %%f in (*.doc) do xcopy /D /I /Y "%%f" %RESULT_DIR%
for /R %%f in (*.docx) do xcopy /D /I /Y "%%f" %RESULT_DIR%
for /R %%f in (*.docm) do xcopy /D /I /Y "%%f" %RESULT_DIR%
for /R %%f in (*.ppt) do xcopy /D /I /Y "%%f" %RESULT_DIR%
for /R %%f in (*.pptx) do xcopy /D /I /Y "%%f" %RESULT_DIR%
for /R %%f in (*.pptm) do xcopy /D /I /Y "%%f" %RESULT_DIR%


