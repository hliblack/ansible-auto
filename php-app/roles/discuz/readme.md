# Discuz

## 说明
此项目是用Ansible编写的Discuz3.4自动安装程序.DZ官方目前仅提供3.4中文简体的程序维护，已经没有其他版本


## 安装基础环境

### 基础环境要求

官方对基础环境的最低要求建议如下：
~~~
php7.0
~~~

基于官方的要求，本程序仅适用于Websoft9的基础环境，包括：

* LAMP
* LNMP

本程序在php7.0,mysql5.6下测试运行正常

### 适用于的操作系统

* CentOS7.X
* Ubuntu（暂时不支持）

### 服务器配置要求

* 建议最低配置1核1G


## 源码包

安装脚本直接从git上下拉源码：https://gitee.com/ComsenzDiscuz/DiscuzX.git 


### 版本
当前版本为3.4

### 其他说明
Discuz需要预先修改安装配置文件 /data/wwwroot/discuz/upload/config/config_global_default.php


## 用户体验改进

### 数据库随机root密码
1. 数据库root账号的随机密码存放在txt文件中（暂未实现）


### 免数据库配置

暂未实现


### 英文方案

暂未实现


## 日志
