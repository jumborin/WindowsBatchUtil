@echo off

REM =======================================================================================
REM �����T�v�F�t�H���_���ƃp�X���[�h�t��zip�t�@�C���ɂ���B
REM �O������Fzip�R�}���h�����p�\�ł��邱�ƁB
REM ���ӎ����F�Ȃ�
REM =======================================================================================

REM Zip�t�@�C���̉𓀃p�X���[�h
SET ZIP_PASS=test

REM zip�t�@�C����
SET ZIP_FILE=zip.zip

REM �Ώۃt�H���_
SET TARGET_DIR=zip

REM �t�H���_���ƃp�X���[�h�t��zip�t�@�C���ɂ���B
zip -e --password=%ZIP_PASS% -r %ZIP_FILE% %TARGET_DIR%