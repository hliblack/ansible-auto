# Moodle 自动化安装与部署

本项目是基于Ansible的[Moodle](https://moodle.org/) 自动化安装脚本，实现在Ansible上一键安装 Moodle。本项目是开源项目，支持MIT开源协议。如果您不熟悉Ansible的使用，您可以直接使用我们在公有云上提供的镜像。

## 操作系统

目前仅支持 CentOS7.x

## 服务器配置要求

最低1G内存，20G系统盘空间，否则无法安装

## 版本

官方提供了最新版本的Git源地址，因此能够保证每次安装都是最新版本。[版本号查看](git://git.moodle.org/moodle.git)

## 安装指南

本Ansible脚本支持root用户、普通用户（+su权限提升）等两种账号模式，也支持密码和秘钥对登录方式。

其中普通用户登录需要增加变量

## 组件

LAMP or LNMP + Moodle

## 使用指南

文档链接：http://support.websoft9.com/docs/moodle