#!/bin/bash
echo "What is the name for your S3 bucket?: "
read $1
aws s3 mb s3://$1/

echo "What is the file name (somefile.filetype) you want to transfer to your S3 bucket? "
read $3
aws s3 cp $3 s3://$1/ --acl public-read

echo -n "Do you want to create an additional S3 bucket (y/n)? "
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "What is the name for additional your S3 bucket?: "
    read $2
    aws s3 mb s3://$2/

    echo "What is the file name (somefile.filetype) you want to transfer to your S3 bucket? "
    read $4
    aws s3 cp $4 s3://$2/ --acl public-read
else
    exit
fi

echo -n "Do you want to check your bucket contents (y/n)? "
read answer
if echo "$answer" | grep -iq "^y" ;then
    aws s3 ls
else
    clear
fi
