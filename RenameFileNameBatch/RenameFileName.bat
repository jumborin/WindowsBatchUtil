@echo off

REM =======================================================================================
REM �����T�v�F�t�@�C���̍X�V�������t�@�C�����̐擪�ɃZ�b�g����B
REM �O������F�Ȃ�
REM ���ӎ����F�Ȃ�
REM =======================================================================================

REM ���[�g�f�B���N�g���̒�`
SET ROOT_DIR=.\

REM ���̂�ύX����t�@�C���̒�`
SET FILE_PATTERN=*.jpg

REM ���[�g�f�B���N�g���Ɉړ�
cd %ROOT_DIR%

REM �t�@�C���̍X�V�������擾���A�t�@�C�����̐擪�ɃZ�b�g
setlocal enabledelayedexpansion
for %%i In (%FILE_PATTERN%) do (
  SET tempLine=%%~ti
  SET tempLine2=!tempLine: =_!
  SET tempLine3=!tempLine2:/=!
  SET tempLine4=!tempLine3::=!
  SET tempLine5=!tempLine4!_%%i
  rename %ROOT_DIR%%%i !tempLine5!
)
endlocal