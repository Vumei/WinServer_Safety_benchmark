@echo off
echo ------------------------------------
echo "ִ�нű�ǰ�����޸���Ҫ��վ�ķ������ơ�Э�����ͺͶ˿ں�"
echo "2017-4-18 Security V1.0"
echo --------------------------------------
pause
netsh advfirewall firewall add rule name="��д��������" dir=in protocol=tcp��udp localport=�˿ں� action=allow enable=yes
netsh firewall set opmode enable

