* 执行完ansible后，还需要链接到服务器运行：```rb-site install /var/www/reviews.example.com``` 命令，手动输入站点信息。
* 运行ansible时，在安装setuptools是可能会报错，此时需要重新运行，且是从reviewboard的tag开始运行，即```ansible-playbook -i hosts --tags=reviewboard reviewboard.yml```
* 根目录：/data/wwwroot/reviewsboard
* reviewboard: admin/admin