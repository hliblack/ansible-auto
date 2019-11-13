# SuiteCRM

## 说明
此项目是用Ansible编写的SuiteCRM自动安装程序.
官方的安装教程：https://docs.suitecrm.com/admin/installation-guide/downloading-installing/
本程序基于官方安装教程，实现自动化安装

## 安装基础环境

### 基础环境要求

官方对基础环境的最低要求建议：https://docs.suitecrm.com/admin/compatibility-matrix/

具体如下：

~~~
he recommended PHP version to install SuiteCRM is 7.1.0 
Although the minimum PHP version required is 5.6.0
~~~

基于官方的要求，本程序仅适用于Websoft9的基础环境，包括：

* LAMP
* LNMP（暂时不支持）

本程序在php7.1,mysql5.6下测试运行正常

### 适用于的操作系统

* CentOS7.X
* Ubuntu（暂时不支持）

### 服务器配置要求

* 建议最低配置1核1G


## 源码包

目前提供SuiteCRM官方原版（中文包没有预制)


### 版本
SuiteCRM官方版当前源码包版本为：V7.11.1，下载地址：https://suitecrm.com/files/162/SuiteCRM-7.11/369/SuiteCRM-7.11.1.zip

### 其他说明
SuiteCRM解压之后需要重新命名


## 用户体验改进

### 数据库随机root密码
1. 数据库root账号的随机密码存放在txt文件中（暂未实现）

### 计划任务配置
安装程序要求配置计划认为

~~~
To Setup Crontab
In order to run SuiteCRM Schedulers, edit your web server user's crontab file with this command: 
sudo crontab -e -u apache
... and add the following line to the crontab file: 
*    *    *    *    *     cd /data/wwwroot/suitecrm; php -f cron.php > /dev/null 2>&1 
You should do this only after the installation is concluded. 

~~~


### 免数据库配置

暂未实现


### 默认安装中文语言包方案

暂未实现


## 日志
### 2019-03-08
SuiteCRM 镜像需要安装并启用 Redis
