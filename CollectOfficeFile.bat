@echo off

REM officeDirを作成し、自ファイル以下のofficeファイルをコピーする。
mkdir officeDir
for /R %%f in (*.xls) do xcopy /D /I /Y "%%f" officeDir
for /R %%f in (*.xlsx) do xcopy /D /I /Y "%%f" officeDir
for /R %%f in (*.xlsm) do xcopy /D /I /Y "%%f" officeDir
for /R %%f in (*.doc) do xcopy /D /I /Y "%%f" officeDir
for /R %%f in (*.docx) do xcopy /D /I /Y "%%f" officeDir
for /R %%f in (*.docm) do xcopy /D /I /Y "%%f" officeDir
for /R %%f in (*.ppt) do xcopy /D /I /Y "%%f" officeDir
for /R %%f in (*.pptx) do xcopy /D /I /Y "%%f" officeDir
for /R %%f in (*.pptm) do xcopy /D /I /Y "%%f" officeDir


