@echo off

REM =======================================================================================
REM �����T�v�F��ʂ̋P�x���ő�(100��)�ɂ���B
REM �O������F�Ȃ�
REM ���ӎ����F�Ȃ�
REM =======================================================================================

REM �d���ݒ�v������GUID
SET SCHEME_GUID=8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

REM �f�B�X�v���C��GUID
SET SUB_GUID=7516b95f-f776-4464-8c53-06167f40cc99

REM ��ʂ̖��邳��GUID
SET SETTING_GUID=aded5e82-b909-4619-9949-f5d71dac0bcb

REM ��ʂ̖��邳(��)
SET BRIGHTNESS=100


REM �o�b�`�ݒ�p
REM ���݃A�N�e�B�u�ȓd���ݒ��SCHEME_GUID���擾����B
powercfg /GETACTIVESCHEME

REM ��ʂ̖��邳��GUID���擾����B
powercfg /q %SCHEME_GUID% %SUB_GUID%


REM ������
REM ���邳���Z�b�g����B
powercfg /setacvalueindex %SCHEME_GUID% %SUB_GUID% %SETTING_GUID% %BRIGHTNESS%
powercfg /setdcvalueindex %SCHEME_GUID% %SUB_GUID% %SETTING_GUID% %BRIGHTNESS%

REM �ݒ�ύX��L���ɂ���
powercfg /setactive %SCHEME_GUID%