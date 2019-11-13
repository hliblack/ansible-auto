# Zentao（禅道）

## 说明
此项目是用Ansible编写的Zentao自动安装程序

## 安装基础环境

### 基础环境要求

官方安装文档：https://www.zentao.net/book/zentaopmshelp/101.html
官方对基础环境的最低要求建议如下：
~~~
1. 禅道需要使用pdo, pdo_mysql, json, filter, openssl, mbstring, zlib, curl, gd, iconv这几个模块。请大家确保PHP环境有加载这几个模块。

2. 推荐使用 Linux + Apache + PHP(5.3/5.4/5.5/5.6/7.0/7.1版本) + MySQL(5.5/5.6版本)/mariadb组合。Nginx其次，不推荐IIS + PHP组合。

3. 不推荐国内开发的那些WAMP集成运行环境。

4. Linux下面不推荐自己编译安装，最好使用操作系统自带的包管理器安装PHP的运行环境。
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
下载地址：https://www.zentao.net/framework/zentao11.2-80109.html

### 版本
本程序当前版本为11.2

### 其他说明
Laravel官方安装包下的ranzhi/www为网站目录


## 用户体验改进

### 数据库随机root密码
1. 数据库root账号的随机密码存放在txt文件中（暂未实现） 


## 日志
