@echo off
setlocal EnableDelayedExpansion&color 0a 
title "WY Group Security compliance for Windows 2008R2SP1_X64"
echo "Windows 安全基线脚本 for Windows 2008R2SP1_X64"
echo              20170718 v1.3
echo ========================
echo 请右键使用管理员权限执行
echo ========================
timeout /t 10
echo "备份本地组策略"
timeout /t 3
call "%~dp0lgpo\export.bat
echo "备份完毕"
cls
echo "导入组策略 "
timeout /t 3
call "%~dp0lgpo\import.bat
echo "导入完毕"
cls
echo "关闭多余服务及注册表修正"
timeout /t 3
call "%~dp0service\sc_2008R2SP1_X64.bat
echo "服务优化完毕"
cls
echo "完成执行,请手动执行重启"
echo "有使用问题，@安全部 20170718"
timeout /t 10
