#!/bin/bash
echo '************ start load images *************'
docker load -i images/webdemo.tar
docker load -i images/webapi.tar
docker load -i images/mysql.tar

echo '************load images success *************'


project_path=$(cd `dirname $0`; pwd)/

cd ${project_path}

#rm -rf SenseCAP-DataVirt-SaaS-Example/

#git clone https://github.com/Seeed-Solution/SenseCAP-DataVirt-SaaS-Example.git
#cp .env file to saas
#cp SenseCAP-DataVirt-SaaS-Example/sensecap_demo/static/lang   lang/
#cp .env  SenseCAP-DataVirt-SaaS-Example/
cp images/docker-compose-offline.yaml ./docker-compose.yaml

echo '************start build ************'
docker-compose up --no-start
docker cp sensecap_monitor.sql mysql:/docker-entrypoint-initdb.d/sensecap_monitor.sql
docker start mysql webapi webdemo

echo -e "Server is running, please visit \033[43;37mhttp://localhost:6060"
