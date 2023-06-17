#!/bin/bash
sudo su
yum update -y
yum install -y httpd
cd /var/www/html
aws s3 sync s3://aosnote-mole-site /var/www/html
unzip mole.zip
cp -r /var/www/html/mole-main/* /var/www/html
rm -rf mole.zip mole-main
systemctl enable httpd
systemctl start httpd
