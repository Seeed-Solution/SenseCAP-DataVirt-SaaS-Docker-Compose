#!/usr/bin/env bash

docker load -i images/webdemo.tar
docker load -i images/webapi.tar
docker load -i images/mysql.tar

echo 'load images success'
echo 'start git clone code'

project_path=$(cd `dirname $0`; pwd)/

cd ${project_path}

rm -rf SenseCAP-DataVirt-SaaS-Example/

git clone https://github.com/Seeed-Solution/SenseCAP-DataVirt-SaaS-Example.git
#cp .env file to saas
#cp SenseCAP-DataVirt-SaaS-Example/sensecap_demo/static/lang   lang/
cp .env  SenseCAP-DataVirt-SaaS-Example/
cp images/docker-compose-offline.yaml SenseCAP-DataVirt-SaaS-Example/

cd  SenseCAP-DataVirt-SaaS-Example/
echo 'start build '
docker-compose build
docker-compose up -d -f docker-compose-offline.yaml

echo -e "Server is running, please visit \033[43;37mhttp://localhost:6060"
