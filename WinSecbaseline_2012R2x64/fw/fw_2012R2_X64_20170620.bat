@echo off
echo ------------------------------------
echo "此脚本将会阻止防火墙预置的文件和打印机共享相关端口流量流入"
echo "For Win2012R2_X64"
echo "2017-06-20 Security V1.1"
echo --------------------------------------
timeout /t 5
netsh advfirewall firewall add rule name="zabbix-in" dir=in protocol=tcp localport=10050 action=allow enable=yes
netsh advfirewall firewall add rule name="MSRDP" dir=in protocol=tcp localport=3389 action=allow enable=yes
netsh advfirewall firewall set rule name="文件和打印机共享(SMB-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="文件和打印机共享(LLMNR-UDP-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="文件和打印机共享(NB-Datagram-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="文件和打印机共享(NB-Name-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="文件和打印机共享(NB-Session-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="文件和打印机共享(后台打印程序服务 - RPC)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="文件和打印机共享(后台打印程序服务 - RPC-EPMAP)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="文件和打印机共享(回显请求 - ICMPv4-In)" new dir=in action=allow enable=yes
netsh advfirewall firewall set rule name="文件和打印机共享(回显请求 - ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="核心网络 - Internet 组管理协议(IGMP-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="核心网络 - IPHTTPS (TCP-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="核心网络 - IPv6 (IPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="核心网络 - IPv6 的动态主机配置协议(DHCPV6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="核心网络 - Teredo (UDP-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="核心网络 - 参数问题(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="核心网络 - 超时(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="核心网络 - 动态主机配置协议(DHCP-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="核心网络 - 多播侦听程序报告 v2 (ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="核心网络 - 多播侦听程序报告(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="核心网络 - 多播侦听程序查询(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="核心网络 - 多播侦听程序完成(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="核心网络 - 邻居发现播发(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="核心网络 - 邻居发现请求(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="核心网络 - 路由器播发(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="核心网络 - 路由器请求(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="核心网络 - 目标不可访问(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="核心网络 - 数据包太大(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="核心网络 - 需要目标不可访问的碎片(ICMPv4-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="远程桌面 - 用户模式(UDP-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="远程桌面 - 远程监控(TCP-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="Windows 远程管理(HTTP-In)" new dir=in action=block enable=yes
netsh advfirewall set publicprofile state on
netsh advfirewall set currentprofile state on
netsh advfirewall set privateprofile state on

