@echo off
echo ------------------------------------
echo "�˽ű�������ֹ����ǽԤ�õ��ļ��ʹ�ӡ��������ض˿���������"
echo "For Win2012R2_X64"
echo "2017-06-20 Security V1.1"
echo --------------------------------------
timeout /t 5
netsh advfirewall firewall add rule name="zabbix-in" dir=in protocol=tcp localport=10050 action=allow enable=yes
netsh advfirewall firewall add rule name="MSRDP" dir=in protocol=tcp localport=3389 action=allow enable=yes
netsh advfirewall firewall set rule name="�ļ��ʹ�ӡ������(SMB-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�ļ��ʹ�ӡ������(LLMNR-UDP-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�ļ��ʹ�ӡ������(NB-Datagram-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�ļ��ʹ�ӡ������(NB-Name-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�ļ��ʹ�ӡ������(NB-Session-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�ļ��ʹ�ӡ������(��̨��ӡ������� - RPC)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�ļ��ʹ�ӡ������(��̨��ӡ������� - RPC-EPMAP)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�ļ��ʹ�ӡ������(�������� - ICMPv4-In)" new dir=in action=allow enable=yes
netsh advfirewall firewall set rule name="�ļ��ʹ�ӡ������(�������� - ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�������� - Internet �����Э��(IGMP-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�������� - IPHTTPS (TCP-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�������� - IPv6 (IPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�������� - IPv6 �Ķ�̬��������Э��(DHCPV6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�������� - Teredo (UDP-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�������� - ��������(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�������� - ��ʱ(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�������� - ��̬��������Э��(DHCP-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�������� - �ಥ�������򱨸� v2 (ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�������� - �ಥ�������򱨸�(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�������� - �ಥ���������ѯ(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�������� - �ಥ�����������(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�������� - �ھӷ��ֲ���(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�������� - �ھӷ�������(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�������� - ·��������(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�������� - ·��������(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�������� - Ŀ�겻�ɷ���(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�������� - ���ݰ�̫��(ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�������� - ��ҪĿ�겻�ɷ��ʵ���Ƭ(ICMPv4-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="Զ������ - �û�ģʽ(UDP-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="Զ������ - Զ�̼��(TCP-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="Windows Զ�̹���(HTTP-In)" new dir=in action=block enable=yes
netsh advfirewall set publicprofile state on
netsh advfirewall set currentprofile state on
netsh advfirewall set privateprofile state on

