#!/bin/sh  
exe="Qt-frontend" #需要发布的程序名称
pwd="/home/ye/Desktop/Qt-frontend" #创建文件夹的位置
files=$(ldd $exe | awk  '{if (match($3,"/")){ printf("%s "),$3 } }')  
cp $files $pwd

