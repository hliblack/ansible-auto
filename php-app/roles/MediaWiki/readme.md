# Mediawiki

## 说明
此项目是用Ansible编写的Mediawiki自动安装程序.MediaWiki requires PHP 7.0.0+ and either MySQL 5.5.8+, MariaDB, or one of the other three possible stores. For more information, please read the pages on system requirements and compatibility.

官网对安装的配置要求：https://www.mediawiki.org/wiki/Manual:Installation_requirements/zh


## 适用于基础环境

本程序仅适用于Websoft9的基础环境，包括：

* LAMP
* LNMP（暂时不支持）

在php7.0,mysql5.6下测试运行正常

## 适用于的操作系统

* CentOS
* Ubuntu（暂时不支持）

## Mediawiki安装需求

* 建议最低配置1核1G

## 用户体验改进

### 免数据库配置

1. Mediawiki从1.32开始，已经无法通过安装步骤创建数据库，故需要提前新建数据库
2. Mediawiki的安装步骤是可以分步骤的，并可以点击“重新开始安装”
3. Mediawiki可以改进预先配置好数据库，让用户无需配置数据库，降低安装难度


/mediawiki/includes/installer/MysqlInstaller.php文件中，'_InstallUser' => 'root', 用于修改安装的时候默认的数据库账户名称
/mediawiki/includes/DefaultSettings.php 包含数据库设置

以上两个文件修改仅用于安装，一旦安装完成，建议复原


```
/************************************************************************//**
 * @name   Database settings
 * @{
 */

/**
 * Database host name or IP address
 */
$wgDBserver = 'localhost';

/**
 * Database port number (for PostgreSQL and Microsoft SQL Server).
 */
$wgDBport = 5432;

/**
 * Name of the database
 */
$wgDBname = 'my_wiki';

/**
 * Database username
 */
$wgDBuser = 'wikiuser';

/**
 * Database user's password
 */
$wgDBpassword = '';

/**
 * Database type
 */
$wgDBtype = 'mysql';
```
### 数据库随机root密码
