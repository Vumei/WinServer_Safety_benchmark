@echo off
echo ------------------------------------
echo "执行脚本前，先修改需要入站的服务名称、协议类型和端口号"
echo "2017-4-18 Security V1.0"
echo --------------------------------------
pause
netsh advfirewall firewall add rule name="填写服务名称" dir=in protocol=tcp或udp localport=端口号 action=allow enable=yes
netsh firewall set opmode enable

