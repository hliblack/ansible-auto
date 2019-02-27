# Ranzhi（然之）

## 说明
此项目是用Ansible编写的Ranzhi自动安装程序

## 安装基础环境

### 基础环境要求

官方对基础环境的最低要求建议如下：
~~~
PHP环境：>=5.4，激活pdo, pdo_mysql，json, pcre模块（然之4.1版本之后，需要激活php_sockets扩展）。
mysql： 推荐5.5/5.6/mariadb
webserver： 推荐使用apache或者nginx， 不建议使用iis。
~~~

基于官方的要求，本程序仅适用于Websoft9的基础环境，包括：

* LAMP
* LNMP（暂未实现）

本程序在php7.2,mysql5.6下测试运行正常

### 适用于的操作系统

* CentOS7.X
* Ubuntu（暂时不支持）

### 服务器配置要求

* 建议最低配置1核1G


## 源码包

直接从官方下载中文版或国际版
下载地址：https://www.ranzhi.org/download/5.1.stable-135.html

### 版本
本程序当前版本为5.1 

### 其他说明
Laravel官方安装包下的ranzhi/www为网站目录


## 用户体验改进

### 数据库随机root密码
1. 数据库root账号的随机密码存放在txt文件中（暂未实现） 


## 日志
