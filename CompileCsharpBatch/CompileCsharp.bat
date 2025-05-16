@echo off

REM =======================================================================================
REM 処理概要：C#のソースコードをコンパイルする。
REM 前提条件：Windows8.1またはWindows10であること
REM 注意事項：なし
REM =======================================================================================

REM C#のソースコードをコンパイルする。
C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc /out:BatchCommand\execute.exe /t:winexe BatchCommand\*.cs
C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc /out:Form\execute.exe /t:winexe Form\*.cs
C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc /out:Group\execute.exe /t:winexe Group\*.cs