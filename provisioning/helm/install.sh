#!/bin/bash

figlet helm

export PATH=/usr/local/bin:/home/vagrant/bin:$PATH
curl ttps://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 > get_helm.sh
chmod +x get_helm.sh
./get_helm.sh

cp  /usr/local/bin/helm /home/vagrant/bin/helm
