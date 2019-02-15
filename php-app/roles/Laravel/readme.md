# Laravel

## 说明
此项目是用Ansible编写的Laravel自动安装程序

## 安装基础环境

### 基础环境要求

官方对基础环境的最低要求建议如下：
~~~
暂无
~~~

基于官方的要求，本程序仅适用于Websoft9的基础环境，包括：

* LAMP
* LNMP

本程序在php7.2,mysql5.6下测试运行正常

### 适用于的操作系统

* CentOS7.X
* Ubuntu（暂时不支持）

### 服务器配置要求

* 建议最低配置1核1G


## 源码包

本程序基于Composer安装


### 版本
本程序基于Composer安装，官方的Composer会根据基础环境的php版本而选择对应的laravel版本。例如：

* php7.0下，安装的是lavarel5.5.x版本
* php7.2下，安装的是lavarel5.7.22版本  

### 其他说明
Laravel官方安装包下的laravel/public为网站目录


## 用户体验改进

### 数据库随机root密码
1. 数据库root账号的随机密码存放在txt文件中（暂未实现） 


## 日志
### 2019-01-117
* 自动判断LAMP或LNMP
