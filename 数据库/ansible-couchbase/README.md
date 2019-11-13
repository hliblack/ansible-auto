# Couchbase Server 自动化安装与部署

本项目是基于 Ansible 编写的 Couchbase Server  自动化安装脚本，只要熟悉 Ansible，便可以将 Couchbase Server  用无人值守的方式部署到你的服务器。本项目是开源项目，支持MIT开源协议。如果您不熟悉Ansible的使用，您可以直接使用我们在公有云上提供的 [相关镜像](https://apps.websoft9.com/couchbase)。

## 操作系统

目前仅支持Ubuntu16.x 和 Ubuntu14.x

## 服务器要求

最低2核4G，具体参考[官方配置要求](https://docs.couchbase.com/server/6.0/install/pre-install.html)

## 组件

请阅读[参数表](/docs/zh/stack-components.md)

## 如何安装最新版本？

本项目 [Couchbase Server repo](/roles/couchbase/tasks/main.yml) 中设置好了官方 deb 包，这个包的地址一般不会变化。软件版本的变化内容在这个包中去实现  
即我们每次安装都可以保证是官方发布的最新版本 

## Ansible安装指南

支持root用户、普通用户（+su权限提升）等两种账号模式，也支持密码和秘钥对登录方式。

## 管理指南

[中文](https://support.websoft9.com/docs/couchbase/zh) | [English](https://support.websoft9.com/docs/couchbase)
