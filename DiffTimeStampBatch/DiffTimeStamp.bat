@echo off

REM =======================================================================================
REM �����T�v�F�w��t�H���_�ȉ��̃t�@�C���ꗗ���쐬���A�O��쐬�����t�@�C���ꗗ(timestamp.txt)�Ɣ�r����B
REM �O������F�Ȃ�
REM ���ӎ����F�Ȃ�
REM =======================================================================================

REM ���t4�����o��
SET TODAY=%DATE:~-10,4%%DATE:~-5,2%%DATE:~-2%

REM �t�@�C���T���f�B���N�g��
SET SEARCHDIR=.\

REM �t�@�C�������f�B���N�g��
SET ROOTDIR=.\

REM �O����s���̃t�@�C�����X�g
SET OLD_TEXT=%ROOTDIR%timestamp.txt

REM �o�b�N�A�b�v��t�@�C�����X�g
SET NEW_TEXT=%ROOTDIR%%TODAY%_timestamp.txt

REM ��r���ʃt�@�C��
SET RESULT=%ROOTDIR%result.txt

REM �o�b�N�A�b�v����
if not exist %OLD_TEXT% type nul > %OLD_TEXT%
MOVE %OLD_TEXT% %NEW_TEXT%

REM ���݂̃t�@�C���̃^�C���X�^���v���擾���A�t�@�C���o�͂���B
dir /S /OGN %SEARCHDIR% | find /V "<DIR>" | find /V "�̃t�@�C��" | find /V "�̃f�B���N�g��" | find /V "�t�@�C���̑���" > %OLD_TEXT%

REM �^�C���X�^���v�̔�r���s���A��r���ʂƂ��ăt�@�C���o�͂���B
FC /N /L /1 /OFF %OLD_TEXT% %NEW_TEXT% > %RESULT%

