@echo off
echo ------------------------------------
echo "�˽ű�������ֹ����ǽԤ�õ��ļ��ʹ�ӡ��������ض˿���������"
echo "For Win2008R2SP1_x64" 
echo "2017-4-18 Security V1.0"
echo --------------------------------------
timeout /t 5
netsh advfirewall firewall set rule name="�ļ��ʹ�ӡ������(SMB-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�ļ��ʹ�ӡ������(LLMNR-UDP-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�ļ��ʹ�ӡ������(NB-Datagram-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�ļ��ʹ�ӡ������(NB-Name-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�ļ��ʹ�ӡ������(NB-Session-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�ļ��ʹ�ӡ������(��̨��ӡ������� - RPC)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�ļ��ʹ�ӡ������(��̨��ӡ������� - RPC-EPMAP)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�ļ��ʹ�ӡ������(�������� - ICMPv4-In)" new dir=in action=allow enable=yes
netsh advfirewall firewall set rule name="�ļ��ʹ�ӡ������(�������� - ICMPv6-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�ļ�������Զ�̹���(DCOM-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�ļ�������Զ�̹���(SMB-In)" new dir=in action=block enable=yes
netsh advfirewall firewall set rule name="�ļ�������Զ�̹���(WMI-In)" new dir=in action=block enable=yes
netsh advfirewall firewall add rule name="zabbix-in" dir=in protocol=tcp localport=10050 action=allow enable=yes
netsh advfirewall firewall add rule name="MSRDP" dir=in protocol=tcp localport=3389 action=allow enable=yes
netsh firewall set opmode enable

