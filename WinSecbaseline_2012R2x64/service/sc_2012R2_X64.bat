REM Certificate Propagation
sc config CertPropSvc start= disabled
net stop CertPropSvc

REM Windows Firewall
sc config MpsSvc start= auto
net start Themes

REM Desktop Themes
sc config Themes start= disabled
net stop Themes

REM IP Helper
sc config iphlpsvc start=disabled
net stop iphlpsvc

REM WinHTTP Web Proxy Auto-Discovery Service
sc config WinHttpAutoProxySvc start= disabled
net stop WinHttpAutoProxySvc

REM Remote Desktop Services UserMode Port Redirector
sc config UmRdpService start=auto
net start UmRdpService

REM Distributed Link Tracking Client
sc config TrkWks start= disabled
net stop TrkWks

REM DNS Client
sc config Dnscache start= disabled
net stop Dnscache 

REM Print Spooler
sc config Spooler start= disabled
net stop Spooler 

REM Remote Registry
sc config RemoteRegistry start= disabled
net stop RemoteRegistry 

REM Server
sc config LanmanServer start= disabled
net stop LanmanServer 

REM Shell Hardware Detection
sc config ShellHWDetection start= disabled
net stop ShellHWDetection 

REM TCP/IP NetBIOS Helper
sc config lmhosts start= disabled
net stop lmhosts 

REM Remote Desktop Configuration
sc config SessionEnv start= disabled
net stop SessionEnv


REM Workstation
sc config LanmanWorkstation start= disabled
net stop LanmanWorkstation 

REM Windows Remote Management (WS-Management)
sc config WinRM start= auto
net start WinRM 

REM Diagnostic Policy Service
sc config DPS start= disabled
net stop DPS 

REM Diagnostic System Host
sc config WdiSystemHost start= disabled
net stop WdiSystemHost 

REM Portable Device Enumerator Service
sc config WPDBusEnum start= disabled
net stop WPDBusEnum

REM Windows Time
sc config W32Time start= auto
net start W32Time

REM Remote Procedure Call (RPC) Locator
sc config RpcLocator start= disabled
net stop RpcLocator

REM Remote Procedure Call (RPC) Locator
sc config RpcLocator start= disabled
net stop RpcLocator

REM Netlogon
sc config Netlogon start= disabled
net stop Netlogon

REM Smart Card
sc config SCardSvr start= disabled
net stop SCardSvr

REM NtfsDisable8dot3NameCreation
reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v NtfsDisable8dot3NameCreation /t REG_DWORD /d 1 /f