@echo off
setlocal enabledelayedexpansion

set "self=%~nx0"
set "output=README.txt"

echo �o�b�`�t�@�C���ꗗ�Ə����T�v > "%output%"
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

echo �������܂����BREADME.txt ���m�F���Ă��������B
endlocal
pause
