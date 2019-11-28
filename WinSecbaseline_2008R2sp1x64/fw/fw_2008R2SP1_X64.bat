@echo off
echo ------------------------------------
echo "此脚本将会阻止防火墙预置的文件和打印机共享相关端口流量流入"
echo "For Win2008R2SP1_x64" 
echo "2017-4-18 Security V1.0"
echo --------------------------------------
timeout /t 5
netsh advfirewall firewall set rule name="文件和打印机共享(SMB-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="文件和打印机共享(LLMNR-UDP-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="文件和打印机共享(NB-Datagram-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="文件和打印机共享(NB-Name-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="文件和打印机共享(NB-Session-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="文件和打印机共享(后台打印程序服务 - RPC)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="文件和打印机共享(后台打印程序服务 - RPC-EPMAP)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="文件和打印机共享(回显请求 - ICMPv4-In)" new dir=in action=allow enable=yes
netsh advfirewall firewall set rule name="文件和打印机共享(回显请求 - ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="文件服务器远程管理(DCOM-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="文件服务器远程管理(SMB-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="文件服务器远程管理(WMI-In)" new dir=in action=block enable=yes
netsh advfirewall firewall add rule name="zabbix-in" dir=in protocol=tcp localport=10050 action=allow enable=yes
netsh advfirewall firewall add rule name="MSRDP" dir=in protocol=tcp localport=3389 action=allow enable=yes
netsh firewall set opmode enable

