# rasp-cloud 快速部署

```bash
make rasp-cloud
bash install.sh
```

# 部署tomcat agent

```bash
# windows 10 x64
# tomcat 10 https://tomcat.apache.org/download-10.cgi
# java 1.8 https://www.openlogic.com/openjdk-downloads 需添加到环境变量

# 登录rasp-cloud管理平台 openrasp/admin@123
# 新建tomcat应用
# 添加主机

# 下载rasp-java agent
curl https://packages.baidu.com/app/openrasp/release/1.3.7/rasp-java.tar.gz -o rasp-java.tar.gz
tar -xvf rasp-java.tar.gz
cd rasp-*/

# 安装
java -jar RaspInstall.jar -heartbeat 90 -appid e12617b9e4cdb40f45d76827983ae3095be58bbb -appsecret PQ2Vqp8ZWN60SW01jn34VrDBhxM6jsiEux2a4NqvTBO -backendurl http://192.168.3.164:8086/ -install /path/to/tomcat

```
