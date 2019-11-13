##

本程序适用于redhat内核相关的操作系统


###  说明

- 带标签运行 命令模式参数 --tags "common,mysql | mariadb | postgresql | mongodb | redis"
- common 为必填标签
- 变量说明  命令模式参数 -e "mariadb_ver=10.3 mariadb_password=123456"
  1. Mariadb
     + mariadb_ver  默认10.3 可选: 10.0 10.1 10.2 10.3 10.4
     + mariadb_password 默认123456
     + remote  默认 yes 可选 no 
  2. MongoDB
     - mongodb_ver 默认3.0 可选:3.0 3.2 3.4 3.6  4.0 
     - mongodb_pwd 默认123456
  3. MySQL
     - mysqlver 默认 57 可选 55 56 57
     - mysql_password 默认123456
     - remote  默认 yes 可选 no 
  4. PostgreSQL（版需要两个变量）
     - postgresql_ver 默认9.4 可选 9.4 9.5 9.6 10 11
     - postgresql_tag  默认94 可选 94 95 96 10 11，版本postgresql_ver保持一致
     - postgresql_password 默认123456
     - remote  默认 yes 可选 no 
   5. Redis 无变量
     
