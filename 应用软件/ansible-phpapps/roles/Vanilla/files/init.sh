#!/bin/bash

old_password=$(cat /credentials/password.txt | awk 'NR==2' |awk -F ":" '{print $2}' )
new_password=$(</dev/urandom tr -dc '0-9!%@#a-zA-Z' | head -c10)
vanilla_password=$(</dev/urandom tr -dc '0-9!%@#a-zA-Z' | head -c10)

systemctl restart mysqld
mysqladmin -uroot -p${old_password} -h localhost password $new_password
mysqladmin -uvanilla -p${old_password} -h localhost password $vanilla_password

echo 'Databases username: root Password: '$new_password  > /credentials/password.txt
echo 'Databases username: vanilla Password: '$vanilla_password >> /credentials/password.txt
                                                                                         
sed -i "s/\/root\/init.sh//" /etc/rc.local                                                      
rm -rf /root/init.sh
