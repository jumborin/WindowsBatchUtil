@echo off

REM =======================================================================================
REM �����T�v�F�d���ݒ�֘A�̃��|�[�g���o�͂���B
REM �O������F�Ǘ��҂Ƃ��Ď��s���邱��
REM ���ӎ����F�Ȃ�
REM =======================================================================================

REM �J�����g�f�B���N�g�����o�b�`�t�@�C���̈ʒu�܂ňړ�����B
cd /d %~dp0

REM �V�X�e���d���ؑւ̐f�f���|�[�g(sleepstudy-report.html)�𐶐�����B
powercfg /SYSTEMPOWERREPORT
REM powercfg /SLEEPSTUDY

REM �V�X�e���X���[�v�ڍs�̐f�f���|�[�g(system-sleep-diagnostics.html)�𐶐�����B
powercfg /SYSTEMSLEEPDIAGNOSTICS


REM �o�b�e���̎g�p�󋵂̃��|�[�g(battery-report.html)���쐬����B
powercfg /BATTERYREPORT

REM �G�l���M�[�����ƃo�b�e�������Ɋւ����ʓI�Ȗ�肪�Ȃ����V�X�e���𕪐͂��A���|�[�g(energy-report.html)���o�͂���B�B
powercfg /ENERGY