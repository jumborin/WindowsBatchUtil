@echo off

REM =======================================================================================
REM �����T�v�FC#�̃\�[�X�R�[�h���R���p�C������B
REM �O������FWindows8.1�܂���Windows10�ł��邱��
REM ���ӎ����F�Ȃ�
REM =======================================================================================

REM C#�̃\�[�X�R�[�h���R���p�C������B
C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc /out:BatchCommand\execute.exe /t:winexe BatchCommand\*.cs
C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc /out:Form\execute.exe /t:winexe Form\*.cs
C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc /out:Group\execute.exe /t:winexe Group\*.cs