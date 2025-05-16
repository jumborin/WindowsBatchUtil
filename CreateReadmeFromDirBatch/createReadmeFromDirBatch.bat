@echo off
setlocal enabledelayedexpansion

set "self=%~nx0"
set "output=README.txt"

echo ## Windowsで利用可能なユーティリティバッチ集 > "%output%"
echo =============================== >> "%output%"

for /r %%f in (*.bat) do (
    if /i not "%%~nxf"=="%self%" (
        set "rel=%%f"
        set "rel=!rel:%CD%\=!"

        echo !rel! >> "%output%"

        rem findstr で「処理概要」を含む行だけ抽出して書き込む
        findstr /C:"処理概要" "%%f" >> "%output%"

        echo. >> "%output%"
    )
)
echo 以上 >> "%output%"

echo 完了しました。README.txt を確認してください。
endlocal
pause
