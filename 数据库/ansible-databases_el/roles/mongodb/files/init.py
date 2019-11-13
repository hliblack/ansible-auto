#!/usr/bin/python

import pymongo
import random,string
import os

os.system('systemctl restart mongod')

new_password = ''.join(random.sample(string.ascii_letters + string.digits, 8))

username = 'root'

with open('/credentials/password.txt','r') as f:
  old_password = f.read().split(':')[2].replace('\n','')

client = pymongo.MongoClient("mongodb://%s:%s@127.0.0.1/" % (username, old_password))
db =  client['admin']
db.add_user(username,new_password)

with open('/credentials/password.txt','w') as f:
  f.write('mongodb username:root\nmongodb password:%s\n'%(new_password))

with open("/etc/rc.local","r") as f:
  lines = f.readlines()
with open("/etc/rc.local","w") as f_w:
  for line in lines:
    if "/root/init.py" in line:
      continue
    f_w.write(line)

os.remove('/root/init.py')