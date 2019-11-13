#!/bin/bash

old_password=$(cat /credentials/password.txt | awk 'NR==2' |awk -F ":" '{print $2}' )
new_password=$(</dev/urandom tr -dc '0-9!%@#a-zA-Z' | head -c10)
testlink_password=$(</dev/urandom tr -dc '0-9!%@#a-zA-Z' | head -c10)

systemctl restart mysqld
mysqladmin -uroot -p${old_password} -h localhost password $new_password
mysqladmin -utestlink -p${old_password} -h localhost password $testlink_password

echo 'MySQL Password: '$new_password  > /credentials/password.txt
echo 'Databases testlink Password: '$testlink_password >> /credentials/password.txt

                                                                                         
sed -i "s/\/root\/init.sh//" /etc/rc.local                                                      
rm -rf /root/init.sh

