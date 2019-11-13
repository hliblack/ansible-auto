# ChanzhiEPS（禅知）

## 说明
此项目是用Ansible编写的chanzhieps自动安装程序.

## 安装基础环境

### 基础环境要求

官方对基础环境的最低要求建议如下：
~~~
蝉知企业门户系统使用php开发，数据库使用mysql，您在安装使用蝉知系统之前，请确认您的系统是否满足要求：
1.php 要求5.4以上版本，推荐使用php7.0/7.1/5.4/5.5/5.6，需要安装php5-curl,php5-json,php5-pdo,php5-gd 模块
2.数据库：mysql 推荐使用5.5/5.6、mariadb
3.服务器软件apache或者nginx， 不建议使用iis
4.如果要使用蝉知的微信公众号功能，需要使用系统的80端口安装蝉知
~~~

基于官方的要求，本程序仅适用于Websoft9的基础环境，包括：

* LAMP
* LNMP（暂时不支持）

本程序在php7.0,mysql5.6下测试运行正常

### 适用于的操作系统

* CentOS7.X
* Ubuntu（暂时不支持）

### 服务器配置要求

* 建议最低配置1核1G


## 源码包

目前提供ChanzhiEPS官方原版


### 版本
1. Opencart官方版当前源码包版本为：V3.0.3.1，下载地址：https://www.opencart.com/index.php?route=cms/download ，
2. Opencart光大网络版是包含了中英文的本地版本，有大量的修，当前版本是V3.0，基于官方原版3.0.2.1基础上匠心二次开发而来。下载地址：https://www.opencart.cn/download

### 其他说明
Opencart官方安装包和光大网络的源码解压后的路径是：opencart/upload，因此Ansible下载到服务器之后还需要将源码移动到opencart目录下面


## 用户体验改进

### 数据库随机root密码
数据库root账号的随机密码存放在txt文件中（暂未实现）

### 免数据库配置

暂未实现


## 日志
### 2019-01-16
