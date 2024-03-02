#!/bin/sh
echo "nameserver 223.5.5.5" >> /etc/resolv.conf

if [ ! -d "/data/" ];then
  mkdir /data
  else
  echo "/data 文件夹已经存在"
fi

if [ ! -d "/sdkpath/volume1/docker" ];then
  mkdir -p /sdkpath/volume1/docker
  else
  echo "/sdkpath/volume1/docker 文件夹已经存在"
fi

if [ ! -f "/data/nas-file-manage.db" ];then
  cp /nas-file-manage.db /data/nas-file-manage.db
else
  echo "用户数据库已存在"
fi

java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -Djava.security.egd=file:/dev/./urandom -jar /app.jar &
nginx -g "daemon off;"
