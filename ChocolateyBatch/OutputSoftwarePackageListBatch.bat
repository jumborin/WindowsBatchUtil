@echo off

REM =======================================================================================
REM �����T�v�FChocolatey�ŃC���X�g�[���\�ȃ\�t�g�E�F�A�p�b�P�[�W���X�g���o�͂���B
REM �O������FChocolatey���C���X�g�[���ςł��邱��
REM ���ӎ����F�Ȃ�
REM =======================================================================================

REM Chocolatey�ŃC���X�g�[���\�ȃ\�t�g�E�F�A�p�b�P�[�W���X�g���o�͂���B
choco list > CanInstallSoftwarePackageList.txt

REM Chocolatey�ŃC���X�g�[���ς̃\�t�g�E�F�A�p�b�P�[�W���X�g���o�͂���B
choco list -lo > InstalledSoftwarePackageList.txt
echo on