@echo off

REM =======================================================================================
REM �����T�v�FofficeDir���쐬���A���t�@�C���ȉ���office�t�@�C�����R�s�[����B
REM �O������F�Ȃ�
REM ���ӎ����F�Ȃ�
REM =======================================================================================

REM �t�H���_�����`
SET RESULT_DIR=officeDir

REM �t�H���_���쐬
mkdir %RESULT_DIR%

REM �e�g���q�̃t�@�C�����R�s�[����B
for /R %%f in (*.xls) do xcopy /D /I /Y "%%f" %RESULT_DIR%
for /R %%f in (*.xlsx) do xcopy /D /I /Y "%%f" %RESULT_DIR%
for /R %%f in (*.xlsm) do xcopy /D /I /Y "%%f" %RESULT_DIR%
for /R %%f in (*.doc) do xcopy /D /I /Y "%%f" %RESULT_DIR%
for /R %%f in (*.docx) do xcopy /D /I /Y "%%f" %RESULT_DIR%
for /R %%f in (*.docm) do xcopy /D /I /Y "%%f" %RESULT_DIR%
for /R %%f in (*.ppt) do xcopy /D /I /Y "%%f" %RESULT_DIR%
for /R %%f in (*.pptx) do xcopy /D /I /Y "%%f" %RESULT_DIR%
for /R %%f in (*.pptm) do xcopy /D /I /Y "%%f" %RESULT_DIR%


