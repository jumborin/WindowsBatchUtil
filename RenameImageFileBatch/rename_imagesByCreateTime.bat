@echo off
setlocal EnableDelayedExpansion

REM =======================================================================================
REM �����T�v�F�����̃f�B���N�g���̃t�@�C���̃t�@�C�������t�@�C���쐬����(yyyyMMdd_HHmmss)�ɂ���
REM �O������F�Ȃ�
REM ���ӎ����F�c���Ă��������t�@�C�����̃t�@�C�������݂��Ȃ����ƁB
REM =======================================================================================

REM --- �Ώۊg���q�����[�v
for %%F in (*.jpg *.jpeg *.png *.JPG *.JPEG *.PNG) do (
    REM --- �t�@�C���̍X�V�������擾�i��F2024/05/16 14:03�j
    set "file=%%F"
    for %%A in ("%%F") do (
        set "filetime=%%~tA"
        call :process_file
    )
)

echo �t�@�C�����̕ύX���������܂����B
pause
exit /b

:process_file
REM --- �X�y�[�X���[���Ɂi14:3 �� 14:03 �΍�j
set "filetime=!filetime: =0!"

REM --- ������ yyyymmdd_hhmmss �`���ɐ��`
set "datetime=!filetime:~0,4!!filetime:~5,2!!filetime:~8,2!_!filetime:~11,2!!filetime:~14,2!!filetime:~17,2!"

REM --- �g���q���擾
set "ext=!file:~-4!"

REM --- �V�����t�@�C�����𐶐�
set "newname=!datetime!!ext!"

REM --- �����t�@�C�������݂���ꍇ�A�A�Ԃ�t����
set "count=1"
:checkexists
if exist "!newname!" (
    set "newname=!datetime!_!count!!ext!"
    set /a count+=1
    goto checkexists
)

REM --- ���l�[�����s�i���ƈقȂ�ꍇ�̂݁j
if /I not "!file!"=="!newname!" (
    echo REN "!file!" "!newname!"
    ren "!file!" "!newname!"
)
exit /b
