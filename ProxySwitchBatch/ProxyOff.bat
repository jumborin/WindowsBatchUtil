@echo off

REM =======================================================================================
REM �����T�v�F�uLAN�Ƀv���L�V�T�[�o�[���g�p����v�̃`�F�b�N�{�b�N�X���O���AProxy��OFF�ɂ���B
REM �O������F�Ǘ��Ҍ����Ŏ��s���邱��
REM ���ӎ����F�Ȃ�
REM =======================================================================================

REM �uLAN�Ƀv���L�V�T�[�o�[���g�p����v�̃`�F�b�N�{�b�N�X���O���AProxy��OFF�ɂ���B
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v ProxyEnable /t reg_dword /d 0
