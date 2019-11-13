# ReportServer自动化安装与部署

本项目是基于Ansible的[ReportServer](https://reportserver.net/en/)自动化安装脚本，实现在Ansible上一键安装ReportServer。本项目是开源项目，支持MIT开源协议。如果您不熟悉Ansible的使用，您可以直接使用我们在公有云上提供的镜像。

## 操作系统

目前仅支持Ubuntu16.x以上部署此脚本

## 服务器配置要求
最低1G内存

## 版本

本项目ReportServer采用的源码部署方式，为了保证每次安装为最新版本，需要在运行脚本之前ReportServer源码下载地址。

修改方法：roles/reportserver/defaults/main.yml的 reportserver_url 字段

源码下载地址：https://sourceforge.net/projects/dw-rs/files/bin/3.0/

## 安装指南

本Ansible脚本支持root用户、普通用户（+su权限提升）等两种账号模式，也支持密码和秘钥对登录方式。

### 变量

下面列出安装过程中可能需要用的变量

~~~

//非root用户安装需要设置此项
admin_username: websoft9

//以下变量可选
mysql_password: 123456 # mysql 默认密码
remote: no  # 是否开启远程
reportserver_url: http://xxx # reportserver下载地址

~~~

### 特殊修改

安装过程中需要上传sql文件，而这个文件名称带版本号，故需要手工修改。3.0.7-6008为版本号字段
所需修改的文件：roles/reportserver/tasks/main.yml

~~~
- name: Create databases 
  mysql_db:
    name: reportserver
    login_user: root
    login_password: '{{mysql_password}}'
    state: import
    target: /data/wwwroot/reportserver/ddl/reportserver-RS3.0.7-6008-schema-MySQL5_CREATE.sql
~~~

## 组件
ReportServer,Nginx,JAVA,MYSQL,phpMyAdmin(Docker)

## 使用指南

后台账号：root/root
   
配置文件：/data/wwwroot/reportserver/WEB-INF/classes/persistence.properties

文档链接：[readme.txt](readme.txt)


