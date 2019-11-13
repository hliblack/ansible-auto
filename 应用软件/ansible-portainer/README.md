# Docker+Portainer自动化安装与部署

本项目是基于Ansible的 Docker+Portainer 自动化安装脚本，实现一键安装Docker+Portainer。本项目是开源项目，支持MIT开源协议。如果您不熟悉Ansible的使用，您可以直接使用我们在公有云上提供的镜像。Portainer是Docker的图形化管理工具，提供状态显示面板、应用模板快速部署、容器镜像网络数据卷的基本操作（包括上传下载镜像，创建容器等操作）、事件日志显示、容器控制台操作、Swarm集群和服务等集中管理和操作、登录用户管理和控制等功能。功能十分全面，基本能满足中小型单位对容器管理的全部需求。

## 技术要求

* 操作系统：目前仅支持Ubuntu16.x以上部署此脚本
* 服务器配置要求：最低1核2G，保证有20G磁盘空间

## Ansible安装指南

本Ansible脚本支持root用户、普通用户（+su权限提升）等两种账号模式，也支持密码和秘钥对登录方式。

其中普通用户登录需要增加变量：

~~~
//假设普通用户的username为websoft9，那么对应的变量为
admin_username: websoft9
~~~

## 版本

Docker本身能够保证每次都是最新版本

## 组件

Docker,Portainer

## 使用指南

文档链接：[en](https://en.websoft9.com/docs/docker) | [中文](http://support.websoft9.com/docs/docker-image-guide/)
