@echo off

REM =======================================================================================
REM �����T�v�F�O����1�����猻�݂܂ł�PC�̋N���������C�x���g���O����擾���ACSV�`���ŏo�͂���B
REM �O������F�Ȃ�
REM ���ӎ����F�Ȃ�
REM =======================================================================================

REM ==========================================================
REM Path�ݒ�
REM ==========================================================

REM temp�t�@�C��1
SET TEMP_FILE=.\temp1.tmp

REM temp�t�@�C��2
SET TEMP_FILE2=.\temp2.tmp

REM �N�������݂̂��o�͂���e�L�X�g�t�@�C��
SET RESULT_FILE=.\result.csv

REM PC�N�����̃C�x���g���OID
SET START_LOG_ID=6005


REM ==========================================================
REM �����J�n
REM ==========================================================

REM �挎��1���̓��t�����߂�B
SET year=%date:~0,4%
SET month=%date:~5,2%
if %month% equ 01 (
  SET month2=12
  SET /a "year2 = year - 1"
) else if %month% geq 11 (
  SET /a "month2 = month - 1"
  SET year2=%year%
) else (
  SET /a "month2_1 = month - 1"
  SET month2=0%month2_1%
  SET year2=%year%
)

REM CSV�`���ŃC�x���g���O��f���o���B
wmic ntevent where "(logfile='system' and timewritten >= '%year2%%month2%01' and (eventcode='%START_LOG_ID%'))" list /format:CSV | find "," > %TEMP_FILE%

REM for���̕ϐ���x���W�J����
setlocal enabledelayedexpansion
  REM �J���}�������Ă��镔�����A���_�[�X�R�A�Œu������B
  for /f "delims=" %%i in (%TEMP_FILE%) do (
    SET tempStr=%%i
    echo !tempStr:,,=,_,! >> %TEMP_FILE2%
  )

REM �t�@�C���ɏ����o���O�Ƀw�b�_�[���o�͂���
echo ����,�N,��,��,��,��,�b > %RESULT_FILE%

REM �t�@�C���Ɍ��ʂ��o�͂���B
for /f "tokens=6,15 delims=," %%i in (%TEMP_FILE2%) do (
  SET tempTimeStr=%%j
  if %%i equ %START_LOG_ID% (
    echo "�N������",!tempTimeStr:~0,4!,!tempTimeStr:~4,2!,!tempTimeStr:~6,2!,!tempTimeStr:~8,2!,!tempTimeStr:~10,2!,!tempTimeStr:~12,2!>> %RESULT_FILE%
  ) else (
    echo "�������Ȃ�"
  )
)
endlocal

REM ==========================================================
REM �㏈��
REM ==========================================================

REM �e���v�t�@�C�����폜����
del /Q %TEMP_FILE%
del /Q %TEMP_FILE2%
