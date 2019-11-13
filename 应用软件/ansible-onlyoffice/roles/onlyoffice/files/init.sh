#!/bin/bash

old_password=$(grep "Password" /var/www/onlyoffice/WebStudio/web.connections.config | awk -F\; '{print $4}' | awk -F'=' '{print $2}')

new_root_password=$(pwgen -Acns 8 1)
new_onlyoffice_password=$(pwgen -Acns 8 1)

systemctl restart mysql

root_hosts=$(echo $(mysql -uroot -p${old_password} -e "select host from mysql.user where user='root';") | sed 's/^host//')

for i in $root_hosts
do
  mysqladmin -uroot -p${old_password} -h $i password $new_root_password
done

mysqladmin -uonlyoffice -p${old_password} password $new_onlyoffice_password


echo -e 'MySQL username:root\nMySQL Password:'$new_root_password  > /credentials/password.txt
echo -e '\nMySQL username:onlyoffice\nMySQL Password:'$new_onlyoffice_password  >> /credentials/password.txt

sed -i 's/\/root\/init.sh//g' /etc/rc.local

rm -rf /root/init.sh
