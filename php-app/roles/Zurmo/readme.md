# Zurmo

## 说明
此项目是用Ansible编写的Zurmo自动安装程序.

## 安装基础环境

### 基础环境要求

官方对基础环境的最低要求查看：http://zurmo.org/wiki/installation-requirements

主要参数如下：
~~~
Apache >= 2.2.1 Or IIS >= 5.0.0 
Apache mod_deflate (Optional, recommended for good traffic deployments)
Memcached (Optional, recommended for good traffic deployments)
MySQL Server >= 5.1
PHP >= 5.3.3
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

目前提供Zurmo官方原版（含中文语言包）


### 版本
1. Zurmo官方版当前源码包版本为：V3.2.5	Stable，下载地址：http://zurmo.org/download


## 用户体验改进

### 数据库随机root密码

暂未实现

### 免数据库配置

暂未实现


### 默认安装中文语言包方案
待定

## 日志
### 2019-01-18
