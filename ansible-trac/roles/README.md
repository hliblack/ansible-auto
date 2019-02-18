1. 该镜像包括：nginx,mysql,trac,subversion,gunicorn
2. 目录路径：
   1. trac项目环境：/data/wwwroot/trac
   2. trac安装路径：/usr/local/lib/python2.7/dist-packages/trac
   3. mysql数据存放目录：/var/lib/msql （暂未修改成功 /data/mysql）
   4. nginx目录：/etc/nginx
   5. 配置文件：/etc/nginx/sites-available/trac
3. 密码：
   1. mysql：root/123456
   2. trac: admin/admin