#!/usr/bin/env bash

mkdir /root/beifen
#创建一个临时文件（要保存备份的路径）
cp -r /root/ql/config  /root/beifen
#数据存在backups目录下，备份到beifen目录下，所以先将数据拷过来
tar -zcPvf /root/beifen/config$(date +%Y%m%d).tar.gz /root/beifen
 #将数据所在文件夹beifen打包
rm -rf /root/beifen/config
 #删除临时文件内容