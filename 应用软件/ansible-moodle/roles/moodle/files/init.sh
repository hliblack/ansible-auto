#!/bin/bash

old_password=$(cat /credentials/password.txt | awk 'NR==2' |awk -F ":" '{print $2}')

new_root_password=$(pwgen -Acns 8 1)
new_moodle_password=$(pwgen -Acns 8 1)

systemctl restart mysql

root_hosts=$(echo $(mysql -uroot -p${old_password} -e "select host from mysql.user where user='root';") | sed 's/^host//')
moodle_hosts=$(echo $(mysql -umoodle -p${old_password} -e "select host from mysql.user where user='moodle';") | sed 's/^host//')

for i in $root_hosts
do
  mysqladmin -uroot -p${old_password} -h $i password $new_root_password
done

for j in $moodle_hosts
do
  mysqladmin -umoodle -p${old_password} -h $j password $new_moodle_password
done

echo -e 'MySQL username:root\nMySQL Password:'$new_root_password  > /credentials/password.txt
echo -e '\nMySQL username:moodle\nMySQL Password:'$new_moodle_password  >> /credentials/password.txt

sed -i 's/\/root\/init.sh//g' /etc/rc.local

rm -rf /root/init.sh
