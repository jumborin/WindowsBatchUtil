@echo off

REM =======================================================================================
REM �����T�v�F�uLAN�Ƀv���L�V�T�[�o�[���g�p����v�̃`�F�b�N�{�b�N�X�Ƀ`�F�b�N�����APROXY���I���ɂ���B�u���[�J���A�h���X�ɂ̓v���L�V�T�[�o���w�肵�Ȃ��v�Ƀ`�F�b�N������
REM �O������F�Ǘ��Ҍ����Ŏ��s���邱��
REM ���ӎ����F�Ȃ�
REM =======================================================================================

REM �uLAN�Ƀv���L�V�T�[�o�[���g�p����v�̃`�F�b�N�{�b�N�X�Ƀ`�F�b�N�����APROXY���I���ɂ���B
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v ProxyEnable /t reg_dword /d 1

REM PROXY�̃A�h���X�ƃ|�[�g�ԍ���ݒ肷��B
REM �v���L�V�T�[�o�ƃ|�[�g�ԍ��𖖔��Ɏw�肷�邱�ƂŐݒ�\
REM reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v ProxyServer /t reg_sz /d

REM �u���[�J���A�h���X�ɂ̓v���L�V�T�[�o���w�肵�Ȃ��v�Ƀ`�F�b�N������
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v ProxyOverride /t reg_sz /d "<local>"

