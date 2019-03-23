#!/bin/bash

cat >>/etc/hosts<<EOF
$1  $2  $3
EOF

yum update  -y
yum install -y -q epel-release
yum install -y -q figlet
yum install -y -q yum-utils     > /dev/null 2>&1
yum install -y -q curl          > /dev/null 2>&1
yum install -y -q jq            > /dev/null 2>&1
yum install -y -q git           > /dev/null 2>&1
yum install -y -q nano          > /dev/null 2>&1
yum install -y -q wget          > /dev/null 2>&1
yum install -y -q unzip         > /dev/null 2>&1
yum install -y -q jq         > /dev/null 2>&1


figlet SSH
sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
systemctl reload sshd
echo $4 | passwd --stdin root >/dev/null 2>&1
echo "export TERM=xterm" >> /etc/bashrc
