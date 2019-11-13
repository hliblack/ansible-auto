# ansible-mongodb

This project is an Ansible automation scripts for installing MongoDB on major Cloud Platform, We have tested it on Azure, AWS, Alibaba Cloud, HUAWEI CLOUD.

If you are not familiar with the Ansible, you can deploy our mongodb Image published on Cloud Platform

You can use these scripts free for any study or business use under the Server Side Public License (SSPL) v1

#### Components

- MongoDB Community
- Docker
- AdminMongo image of Docker

> If MongoDB Community is not meet your requirements, you can upgrade to [MongoDB Enterprise](https://www.mongodb.com/download-center/enterprise) by yourself and get the license from MongoDB, Inc.


#### Document

https://support.websoft9.com/docs/mongodb

#### LICENSE

MongoDB Community is free and the source is available. Versions released prior to October 16, 2018 are published under the AGPL. All versions released after October 16, 2018, including patch fixes for prior versions, are published under the Server Side Public License (SSPL) v1. See individual files for details.

### Notice
1. 3.0支持Ubuntu14.04, 3.2-3.6版本支持到Ubuntu16.04, 4.x系列支持Ubuntu18.04
2. 3.2版本for Ubuntu需要在/lib/systemd/system/mongod.service 的[Service]添加 Type=forking