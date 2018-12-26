@echo off

REM pdfDirを作成し、自ファイル以下のPDFファイルをコピーする。
mkdir pdfDir
for /R %%f in (*.pdf) do xcopy /D /I /Y "%%f" pdfDir
