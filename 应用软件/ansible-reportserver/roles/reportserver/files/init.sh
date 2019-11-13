#!/bin/bash

old_password=$(cat /credentials/password.txt | awk 'NR==2' |awk -F ":" '{print $2}' )
new_password=$(</dev/urandom tr -dc '12345qwertQWERTasdfgASDFGzxcvbZXCVB' | head -c10)

sleep 5
systemctl restart mysql
mysqladmin -uroot -p${old_password} password $new_password

echo 'Datbases root Password:'$new_password  > /credentials/password.txt

sed -i "s/$old_password/$new_password/" /data/wwwroot/reportserver/WEB-INF/classes/persistence.properties

systemctl restart tomcat8
userdel -rf websoft9      
rm -rf /var/db/sudo/lectured/websoft9                                          
sed -i "s/\/root\/init.sh//" /etc/rc.local                                                      
rm -rf /root/init.sh

