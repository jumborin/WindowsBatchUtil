@echo off
setlocal enabledelayedexpansion

set "self=%~nx0"
set "output=README.txt"

echo ## Windows�ŗ��p�\�ȃ��[�e�B���e�B�o�b�`�W > "%output%"
echo =============================== >> "%output%"

for /r %%f in (*.bat) do (
    if /i not "%%~nxf"=="%self%" (
        set "rel=%%f"
        set "rel=!rel:%CD%\=!"

        echo !rel! >> "%output%"

        rem findstr �Łu�����T�v�v���܂ލs�������o���ď�������
        findstr /C:"�����T�v" "%%f" >> "%output%"

        echo. >> "%output%"
    )
)
echo �ȏ� >> "%output%"

echo �������܂����BREADME.txt ���m�F���Ă��������B
endlocal
pause
