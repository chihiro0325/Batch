@echo off

echo.
echo ====================================================
echo �u����T�C���C���̃A�j���[�V������\������v�̖�����
echo ====================================================
echo.

rem -----�u����T�C���C���̃A�j���[�V������\������v�̖����� -----
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableFirstLogonAnimation" /t REG_DWORD /d "0" /f

TIMEOUT /t 5 /nobreak >nul

exit