@echo off
setlocal EnableDelayedExpansion&color 0a 
title "WY Group Security compliance for Windows 2008R2SP1_X64"
echo "Windows ��ȫ���߽ű� for Windows 2008R2SP1_X64"
echo              20170718 v1.3
echo ========================
echo ���Ҽ�ʹ�ù���ԱȨ��ִ��
echo ========================
timeout /t 10
echo "���ݱ��������"
timeout /t 3
call "%~dp0lgpo\export.bat
echo "�������"
cls
echo "��������� "
timeout /t 3
call "%~dp0lgpo\import.bat
echo "�������"
cls
echo "�رն������ע�������"
timeout /t 3
call "%~dp0service\sc_2008R2SP1_X64.bat
echo "�����Ż����"
cls
echo "���ִ��,���ֶ�ִ������"
echo "��ʹ�����⣬@��ȫ�� 20170718"
timeout /t 10
