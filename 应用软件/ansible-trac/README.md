# Trac自动化安装与部署

本项目是基于 Ansible 的 Trac 自动化安装脚本，实现在Ansible上一键安装Trac。本项目是开源项目，支持MIT开源协议。如果您不熟悉Ansible的使用，您可以直接使用我们在公有云上提供的镜像。

## 操作系统

目前仅支持Ubuntu16.x以上部署此脚本

## 服务器配置要求

最低1核1G

## 版本

本项目采用pip安装，每次安装均可以保证为最新版。[查看Trac最新版本](https://pypi.org/project/Trac/)

## 安装指南

本Ansible脚本支持root用户、普通用户（+su权限提升）等两种账号模式，也支持密码和秘钥对登录方式。

其中普通用户登录需要增加变量：

~~~
//假设普通用户的username为
admin_username: websoft9
~~~

## 组件
Trac,Nginx,MYSQL,phpMyAdmin(Docker)

## 使用指南

后台账号：
   
配置文件：/data/trac/conf/trac.ini

文档链接：[readme.txt](readme.txt)
