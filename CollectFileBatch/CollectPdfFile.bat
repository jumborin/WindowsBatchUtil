@echo off

REM ===============================================================
REM pdfDirを作成し、自ファイル以下のPDFファイルをコピーする。
REM ===============================================================

REM フォルダ名を定義
SET RESULT_DIR=pdfDir

REM フォルダを作成
mkdir %RESULT_DIR%

REM PDFファイルをコピーする。
for /R %%f in (*.pdf) do xcopy /D /I /Y "%%f" %RESULT_DIR%
