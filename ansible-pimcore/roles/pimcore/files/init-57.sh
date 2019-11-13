#!/bin/bash

old_password=$(cat /credentials/password.txt | awk -F ":" '{print $2}' )
root_password=$(</dev/urandom tr -dc '0-9!@#$%a-zA-Z' | head -c10)
pimcore_password=$(</dev/urandom tr -dc '0-9!@#$%a-zA-Z' | head -c10)

systemctl restart mysqld
mysqladmin -uroot -p${old_password} -h localhost password $root_password

echo 'Databases username: root\n Databases password: '$root_password  > /credentials/password.txt
echo 'Databases username: pimcore\n  Databases password: '$old_password  >> /credentials/password.txt


sed -i "s/\/root\/init.sh//" /etc/rc.local
rm -rf /root/init.sh

