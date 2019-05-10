#!/bin/bash

old_password=$(cat ~/password.txt | awk -F ":" '{print $2}' )
new_password=$(</dev/urandom tr -dc '12345!$%qwertQWERTasdfgASDFGzxcvbZXCVB' | head -c10)

systemctl restart mysql
mysqladmin -uroot -p${old_password} password $new_password

echo 'Databases root Password:'$new_password  > ~/password.txt

sed -i "s/123456/$new_password/" /data/wwwroot/trac/conf/trac.ini

sed -i "s/\/root\/init.sh//" /etc/rc.local

rm -rf /root/init.sh

