@echo off
setlocal EnableDelayedExpansion

REM =======================================================================================
REM 処理概要：直下のディレクトリのファイルのファイル名をファイル作成日時(yyyyMMdd_HHmmss)にする
REM 前提条件：なし
REM 注意事項：残しておきたいファイル名のファイルが存在しないこと。
REM =======================================================================================

REM --- 対象拡張子をループ
for %%F in (*.jpg *.jpeg *.png *.JPG *.JPEG *.PNG) do (
    REM --- ファイルの更新日時を取得（例：2024/05/16 14:03）
    set "file=%%F"
    for %%A in ("%%F") do (
        set "filetime=%%~tA"
        call :process_file
    )
)

echo ファイル名の変更が完了しました。
pause
exit /b

:process_file
REM --- スペースをゼロに（14:3 → 14:03 対策）
set "filetime=!filetime: =0!"

REM --- 日時を yyyymmdd_hhmmss 形式に整形
set "datetime=!filetime:~0,4!!filetime:~5,2!!filetime:~8,2!_!filetime:~11,2!!filetime:~14,2!!filetime:~17,2!"

REM --- 拡張子を取得
set "ext=!file:~-4!"

REM --- 新しいファイル名を生成
set "newname=!datetime!!ext!"

REM --- 同名ファイルが存在する場合、連番を付ける
set "count=1"
:checkexists
if exist "!newname!" (
    set "newname=!datetime!_!count!!ext!"
    set /a count+=1
    goto checkexists
)

REM --- リネーム実行（元と異なる場合のみ）
if /I not "!file!"=="!newname!" (
    echo REN "!file!" "!newname!"
    ren "!file!" "!newname!"
)
exit /b
