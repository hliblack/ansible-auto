# ThinkPHP

## 说明
此项目是用Ansible编写的ThinkPHP自动安装程序.

## 安装基础环境

### 基础环境要求

官方对基础环境的最低要求建议如下：
~~~
暂无
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

目前提供Thinkphp官方原版,上传到OSS


### 版本
1. Thinkphp官方版当前源码包版本为：V5.0.24，下载地址：http://www.thinkphp.cn/down.html

### 其他说明
Thinkphp官方安装包下的thinkphp/public为网站目录


## 用户体验改进

### 数据库随机root密码
1. 数据库root账号的随机密码存放在txt文件中（暂未实现）
2. 


## 日志
### 2019-01-117
* 自动判断LAMP或LNMP
