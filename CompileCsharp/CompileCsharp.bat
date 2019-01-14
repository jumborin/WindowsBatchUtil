@echo off

REM ==========================================================
REM C♯を名称を指定してコンパイルする。
REM 実行環境：Windows8.1またはWindows10
REM ==========================================================

REM C#をコンパイルする。
C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc /out:BatchCommand\execute.exe /t:winexe BatchCommand\*.cs
C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc /out:Form\execute.exe /t:winexe Form\*.cs
C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc /out:Group\execute.exe /t:winexe Group\*.cs