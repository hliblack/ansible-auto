## 注意事项
1. PHP 版本需 7.1 以上
2. MySQL 版本需 5.7 以上
3. 登录账号: admin@admin.com , 密码: admin123
4. firstname: dream , lastname: factory
5. 暂未设置开机随机密码，目前为固定强密码
6. 运行ansible脚本时，在 php artisan df:env 这一步会出现执行成功但无法进行下一步的情况。解决方法：将这一步之前的注释掉（**除了 Get MySQL Password 这部分**），然后重新执行。