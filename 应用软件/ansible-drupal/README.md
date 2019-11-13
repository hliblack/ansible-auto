# Drupal 自动化安装与部署

本项目是基于Ansible的 [Drupal](https://drupal.org) 自动化安装脚本，实现在 Ansible 上一键安装 Drupal。本项目是开源项目，支持MIT开源协议。如果您不熟悉Ansible的使用，您可以直接使用我们在公有云上提供的镜像。

## 技术要求

操作系统：CentOS7.x

运行环境：LAMP, LNMP，其中 Drupal 8.5.0 版本以上建议 php7.2

服务器配置：最低1G内存，10G系统盘空间，否则无法安装

> 官方技术要求：https://www.drupal.org/docs/8/system-requirements

## Drupal 版本控制

通过修改下载地址来控制版本

## Ansible安装指南

本Ansible脚本支持root用户、普通用户（+su权限提升）等两种账号模式，也支持密码和秘钥对登录方式。

## 组件

Drupal+LAMP(Apache, MySQL, PHP)

## 使用指南

文档链接：http://support.websoft9.com/docs/drupal

