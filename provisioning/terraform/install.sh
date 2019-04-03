#!/bin/bash

figlet terraform

curl -LO https://raw.github.com/robertpeteuil/terraform-installer/master/terraform-install.sh
chmod +x terraform-install.sh
./terraform-install.sh
cp  /usr/local/bin/terraform /home/vagrant/bin/terraform