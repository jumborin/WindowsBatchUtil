@echo off

REM =======================================================================================
REM �����T�v�F�w��t�H���_�����z�h���C�u�Ƃ��ăh���C�u�p�X�Ɋ��蓖�Ă�B
REM �O������F�Ȃ�
REM ���ӎ����F�Ȃ�
REM =======================================================================================

REM ���z�h���C�u�̃��[�g�t�H���_�ɐݒ肷����t�H���_
SET VIRTUAL_DRIVE=C:\VirtualD

REM ���z�h���C�u�ɐݒ肷��h���C�u�p�X
SET DRIVE_PATH=D:

REM ���z�h���C�u�ɐݒ肷��t�H���_�����݂��Ȃ������ꍇ�͍쐬����B
IF EXIST %VIRTUAL_DRIVE% (
  mkdir %VIRTUAL_DRIVE%
)

REM ���z�h���C�u���쐬����B
subst %DRIVE_PATH% %VIRTUAL_DRIVE%