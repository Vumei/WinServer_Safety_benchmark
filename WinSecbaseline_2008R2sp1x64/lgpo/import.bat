set curdir=%~dp0
cd /d %curdir%
start LGPO.exe /g %curdir%temp\latest
gpupdate