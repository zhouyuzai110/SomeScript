#!/bin/bash
filename=`date +%F-%T`
cd ~/cp/
curl "http://zx.caipiao.163.com/trend/d11_basic.html?&selectDate=5" > $filename
uuencode $filename $filename|mail -s $filename zhouyuzai110@gmail.com



