# php-app
本项目是流行的PHP应用程序自动安装项目，适用于已经安装了Websoft9提供的LAMP或LNMP环境的用户。

## 镜像自动化说明

下面描述镜像制作过程中的注意事项和特殊要求（区别于官方默认安装）

### 源码包要求
1. 大部分源码都是海外地址，建议手工将官方下载包下载到OSS
2. 下载的源码包不进行任何处理，直接上传即可

### 组件安装
除应用程序之外的组件，都通过yum或composer在线安装

### php.ini
### 网站配置文件

### OwnCloud
1. 上传/下载文件大小
2. 默认内置配置文件 配置好 redis
### NextCloud
1. 上传/下载文件大小(后台可设置)

2. opcache 设置
```
opcache.enable=1
opcache.enable_cli=1
opcache.interned_strings_buffer=8
opcache.max_accelerated_files=10000
opcache.memory_consumption=128
opcache.save_comments=1
opcache.revalidate_freq=1
```

3. apache vhost 需要设置 头部  Header set Referrer-Policy "no-referrer"

4. 默认内置配置文件 配置好 redis 和 默认开启SMTP的SSL/TLS
### DzzOffice
1.上传/下载文件大小

### KodCloud（可道云）
1.上传/下载文件大小

### Pydio
1.上传/下载文件大小

### ResourceSpace
1.上传/下载文件大小

### Dolibarr
1. 需修改数据库编码为 uft-8

### Drupal
1. 需将安装包下载到 oss

### EspoCRM

### Empirecms（帝国）
1. 安装路径非根目录
2. 需修改php.ini

### SuiteCRM

### VtigerCRM

### ZurmoCRM

### Ranzhi（然之协同）
### Zentao（禅道）
### chanzhiESP（蝉知）

### MantisBT

### Mediawiki
需要安装APCU
需要解决apache上传漏洞问题

### Moodle
1. 数据库配置：innodb_file_format = Barracuda...

### Opencart
1. 汉化问题：内置三个汉化包（Install,Admin,Catalog）；默认增设一个中文配置项；默认前后台为英文
2. 默认安装vQmod

### Prestashop

### Magento
1.汉化问题：内置中文包
2.部分组件需要PHP7.2,因此建议在PHP7.2的基础环境下安装
3.最低内存为756M限制，否则在线安装插件不可以使用
4.测试在线主题和插件的安装
5.V2.3技术要求：https://devdocs.magento.com/guides/v2.3/install-gde/system-requirements-tech.html

### ECSHOP

### Discuz
1.DZ3.4版本以上需PHP7.0支持
2.修改默认数据库配置文件，确保无障碍安装

### Joomla


# 企业网盘软件的通用特征
企业网盘软件镜像核心需求，如下几点需求，是用户最需要的需求

* 上传文件大小限制不能低于500M
* Office文件的在线预览、编辑
* 视频文件在线播放
* 网盘存储挂载OSS

## NextCloud 目前在国内无法安装插件


