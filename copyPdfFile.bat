@echo off

REM コピーする。
mkdir pdfDir
for /R %%f in (*.pdf) do xcopy /D /I /Y "%%f" pdfDir




