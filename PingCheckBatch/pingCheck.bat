@echo off

REM =======================================================================================
REM �����T�v�F�w��IP�A�h���X�̐����m�F���s���o�b�`
REM �O������F�Ȃ�
REM ���ӎ����F�Ȃ�
REM =======================================================================================

REM ���ʃt�@�C���̏o�̓f�B���N�g��
set ROOT_DIR=.\

REM �����m�F�������[����IP�A�h���X
set IP_ADDRESS=192.168.11.1

REM ���t����15��(yyyymmdd_HHMMSS)��ϐ��ɑ��
set TIME=%DATE:~-10,4%%DATE:~-5,2%%DATE:~-2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2% 



REM �e���v�t�@�C���Ɍ��ʂ������o��
ping %IP_ADDRESS% | find "�p�P�b�g��:" > temp.txt

REM ���ʂ�ǂݍ��݁A�ϐ��ɑ��
FOR /f "delims=" %%t IN (temp.txt) DO SET RESULT=%%t

REM �e���v�t�@�C�����폜
del /F temp.txt

REM ���ʃt�@�C���ɓ����ƌ��ʂ������o��
echo %TIME%%RESULT% >> %ROOT_DIR%checkResult.txt

