# Prestashop

## 说明
此项目是用Ansible编写的Prestashop自动安装程序

## 安装基础环境

### 基础环境要求

官方对基础环境的最低要求建议:https://www.prestashop.com/en/system-requirements

摘抄：
~~~
A domain name (or a subdomain/subfolder)
Recommended web server: Apache 2.x, Nginx or Microsoft IIS
PHP 5.6+
MySQL 5.0+ installed with a database created
FTP access (ask your hosting service for your credentials)
Configuration
In the PHP configuration (php.ini file) set memory_limit to "128M" and upload_max_filesize to "16M" (or more if available). If you do not have direct access to the php.ini file, ask your provider to change the settings for you.
SSL certificate if you plan to process payments internally (not using PayPal for instance)
Must have PHP extensions: Mcrypt, OpenSSL, Zip, Curl, GD, PDO
To improve performances: MemCached, Apc, OpCache
~~~

基于官方的要求，本程序仅适用于Websoft9的基础环境，包括：

* LAMP
* LNMP（暂未实现）

本程序在php7.0,mysql5.6下测试运行正常

### 适用于的操作系统

* CentOS7.X
* Ubuntu（暂时不支持）

### 服务器配置要求

* 建议最低配置1核1G


## 源码包

目前直接到官方在线下载：https://www.prestashop.com/en/download


### 版本
当前版本为1.7.5.0



## 用户体验改进

### 数据库随机root密码
1. 数据库root账号的随机密码存放在txt文件中（暂未实现）


### 免数据库配置

暂未实现


### 英文方案

暂未实现


## 日志
