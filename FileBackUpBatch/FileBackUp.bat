@echo off

REM =======================================================================================
REM �����T�v�F�o�b�N�A�b�v���t�H���_����o�b�N�A�b�v��t�H���_�Ƀo�b�N�A�b�v����B
REM �O������F�Ȃ�
REM ���ӎ����F�Ȃ�
REM =======================================================================================

REM �o�b�N�A�b�v���t�H���_
set SOURCE_DIR=.\source

REM �o�b�N�A�b�v��t�H���_
set DIST_DIR=.\dist

REM �R�s�[�Ώۂ̃t�@�C�������O�ɏo�͂���B
xcopy %SOURCE_DIR% %DIST_DIR% /E /L /H /R /K /-Y /B > copyLog.log

REM �R�s�[����
xcopy %SOURCE_DIR% %DIST_DIR% /E /F /H /R /K /-Y /B
