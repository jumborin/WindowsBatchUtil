@echo off

REM =======================================================================================
REM �����T�v�Fpackages.config�Œ�`�����\�t�g�E�F�A��Chocolatey�ŃC���X�g�[������B
REM �O������F�Ǘ��Ҍ����Ŏ��s���邱�ƁB
REM ���ӎ����F���K�w��packages.config�����邱�ƁB
REM =======================================================================================

cd /d %~dp0

REM packages.config�Œ�`�����\�t�g�E�F�A��Chocolatey�ŃC���X�g�[������B
choco install -y packages.config

echo on