@echo off

set VER=2.0.1
title Network Drive Adder Batch Program Ver %VER%

rem �h���C�u�͓K���ǉ����Ă��������B
rem �h���C�u���^�[�w��
set DRIVE_LETTER_1=R
set DRIVE_LETTER_2=S
set DRIVE_LETTER_3=T

rem Path�w��
set PATH_1="\\192.168.1.4\cloud\GoogleDrive(20cc0226)\1_�w�Z\�l�b�g�v���O���~���O1\Python"
set PATH_2="\\192.168.1.4\cloud"
set PATH_3="\\192.168.1.4\public"

echo.
echo.

rem �ؒf�����h���C�u�̈ꗗ��\��
echo �g�p����h���C�u��ؒf���܂��B��߂�ꍇ�͂��̂܂ܕ��Ă��������B
echo.
echo #�ؒf����h���C�u�ꗗ
echo ---------------------------------------------------------------
if exist %DRIVE_LETTER_1%:\ (
	net use %DRIVE_LETTER_1%:
) else (
	echo %DRIVE_LETTER_1%: �͊��蓖�Ă��Ă��܂���B
	)
)
echo ---------------------------------------------------------------
if exist %DRIVE_LETTER_2%:\ (
	net use %DRIVE_LETTER_2%:
) else (
	echo %DRIVE_LETTER_2%: �͊��蓖�Ă��Ă��܂���B
	)
)
echo ---------------------------------------------------------------
if exist %DRIVE_LETTER_3%:\ (
	net use %DRIVE_LETTER_3%:
) else (
	echo %DRIVE_LETTER_3%: �͊��蓖�Ă��Ă��܂���B
	)
)
echo ---------------------------------------------------------------

TIMEOUT /t 2 /nobreak >nul

rem �h���C�u��ؒf
echo.
echo #�h���C�u��ؒf���܂�
echo ---------------------------------------------------------------
if exist %DRIVE_LETTER_1%:\ (
	net use %DRIVE_LETTER_1%: /delete
) else (
	echo %DRIVE_LETTER_1%:\ �͊��蓖�Ă��Ă��܂���B
	)
)

if exist %DRIVE_LETTER_2%:\ (
	net use %DRIVE_LETTER_2%: /delete
) else (
	echo %DRIVE_LETTER_2%:\ �͊��蓖�Ă��Ă��܂���B
	)
)

if exist %DRIVE_LETTER_3%:\ (
	net use %DRIVE_LETTER_3%: /delete
) else (
	echo %DRIVE_LETTER_3%:\ �͊��蓖�Ă��Ă��܂���B
	)
)

echo.
TIMEOUT /t 3 /nobreak >nul

rem ���蓖�Ă�h���C�u�ꗗ
echo #���蓖�Ă�h���C�u�ꗗ
echo ---------------------------------------------------------------
echo %DRIVE_LETTER_1%:\�� "%PATH_1%" �ł�
echo ---------------------------------------------------------------
echo %DRIVE_LETTER_2%:\�� "%PATH_2%" �ł�
echo ---------------------------------------------------------------
echo %DRIVE_LETTER_3%:\�� "%PATH_3%" �ł�
echo ---------------------------------------------------------------

echo.

rem �h���C�u�����蓖�Ă�
echo #�l�b�g���[�N�h���C�u�̊��蓖�Ă����s���܂��B
timeout /t 1 /nobreak >nul
echo ���蓖�Ē�...
echo.

timeout /t 2 /nobreak >nul
net use %DRIVE_LETTER_1%: %PATH_1%  /PERSISTENT:NO
net use %DRIVE_LETTER_2%: %PATH_2%  /PERSISTENT:NO
net use %DRIVE_LETTER_3%: %PATH_3%  /PERSISTENT:NO

rem �I��
echo ���蓖�Ă��������܂���!
TIMEOUT /t 1 /nobreak >nul