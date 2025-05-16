@echo off

REM =======================================================================================
REM �����T�v�F���t�H���_�ȉ���CSV�t�@�C�����}�[�W����B
REM �O������F�Ȃ�
REM ���ӎ����F�Ȃ�
REM =======================================================================================

REM �ϐ��̒�`
SET TARGET_FILE=*.csv
SET MERGE_TEMP_FILE=.\merge\merge.tmp
SET MERGE_RESULT_FILE=.\merge\mergeResult.csv

REM �}�[�W���ʂ�����t�H���_���쐬
mkdir merge

REM �t�@�C����P���Ƀ}�[�W
copy /b %TARGET_FILE% %MERGE_TEMP_FILE%

REM 1�s��(�w�b�_�[���擾����B
for /f %%a in ( %MERGE_TEMP_FILE% ) do (
  @SET HEADER_DATA=%%a
  goto :exit
)
:exit

REM �w�b�_�[�s�������o��
echo %HEADER_DATA%>>%MERGE_RESULT_FILE%

REM �w�b�_�[�s�����O���A���ʃt�@�C���ɏ����o��
for /f %%c in ( %MERGE_TEMP_FILE% ) do (
  if not "%HEADER_DATA%"=="%%c" (
    echo %%c>>%MERGE_RESULT_FILE%
  )
)

REM �Ō�Ɉꎞ�t�@�C�����폜
del %MERGE_TEMP_FILE%
