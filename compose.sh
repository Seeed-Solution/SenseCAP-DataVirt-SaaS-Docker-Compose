#!/usr/bin/env bash
project_path=$(cd `dirname $0`; pwd)/

cd ${project_path}

rm -rf SenseCAP-DataVirt-SaaS-Example/

git clone https://github.com/Seeed-Solution/SenseCAP-DataVirt-SaaS-Example.git
#cp .env file to saas

cp .env  SenseCAP-DataVirt-SaaS-Example/

cd  SenseCAP-DataVirt-SaaS-Example/

docker-compose build
docker-compose up -d

echo -e "Server is running, please visit \033[43;37mhttp://localhost:6060"
