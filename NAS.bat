@echo off

set VER=2.0.0
title Network Drive Adder Batch Program Ver %VER%

set DRIVE_LETTER_1=R
set DRIVE_LETTER_2=S
set DRIVE_LETTER_3=T
set DRIVE_LETTER_4=U
set DRIVE_LETTER_5=V
set PATH_1="\\192.168.1.4\cloud\GoogleDrive(20cc0226)\1_�w�Z\�l�b�g�v���O���~���O1\Python"
set PATH_2="\\192.168.1.4\cloud"
set PATH_3="\\192.168.1.4\public"
set PATH_4="\\192.168.1.4\school"
set PATH_5="\\192.168.1.48\surveillance"

echo.
echo.

echo �l�b�g���[�N�̎g�p����h���C�u��ؒf���܂��B
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
if exist %DRIVE_LETTER_4%:\ (
	net use %DRIVE_LETTER_4%:
) else (
	echo %DRIVE_LETTER_4%: �͊��蓖�Ă��Ă��܂���B
	)
)
echo ---------------------------------------------------------------
if exist %DRIVE_LETTER_5%:\ (
	net use %DRIVE_LETTER_5%:
) else (
	echo %DRIVE_LETTER_5%: �͊��蓖�Ă��Ă��܂���B
	)
)
echo ---------------------------------------------------------------
TIMEOUT /t 2 /nobreak >nul

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
if exist %DRIVE_LETTER_4%:\ (
	net use %DRIVE_LETTER_4%: /delete
) else (
	echo %DRIVE_LETTER_4%:\ �͊��蓖�Ă��Ă��܂���B
	)
)
if exist %DRIVE_LETTER_5%:\ (
	net use %DRIVE_LETTER_5%: /delete
) else (
	echo %DRIVE_LETTER_5%:\ �͊��蓖�Ă��Ă��܂���B
	)
)
echo.
TIMEOUT /t 3 /nobreak >nul

echo #���蓖�Ă�h���C�u�ꗗ
echo ---------------------------------------------------------------
echo %DRIVE_LETTER_1%:\�� "%PATH_1%" �ł�
echo ---------------------------------------------------------------
echo %DRIVE_LETTER_2%:\�� "%PATH_2%" �ł�
echo ---------------------------------------------------------------
echo %DRIVE_LETTER_3%:\�� "%PATH_3%" �ł�
echo ---------------------------------------------------------------
echo %DRIVE_LETTER_4%:\�� "%PATH_4%" �ł�
echo ---------------------------------------------------------------
echo %DRIVE_LETTER_5%:\�� "%PATH_5%" �ł�
echo ---------------------------------------------------------------
echo.

echo #�l�b�g���[�N�h���C�u�̊��������s���܂��B
timeout /t 1 /nobreak >nul
echo ���蓖�Ē�...
echo.

timeout /t 2 /nobreak >nul
net use %DRIVE_LETTER_1%: %PATH_1%  /PERSISTENT:NO
net use %DRIVE_LETTER_2%: %PATH_2%  /PERSISTENT:NO
net use %DRIVE_LETTER_3%: %PATH_3%  /PERSISTENT:NO
net use %DRIVE_LETTER_4%: %PATH_4%  /PERSISTENT:NO
net use %DRIVE_LETTER_5%: %PATH_5%  /PERSISTENT:NO

echo ���蓖�Ă��������܂���!
TIMEOUT /t 1 /nobreak >nul