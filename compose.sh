#!/usr/bin/env bash
project_path=$(cd `dirname $0`; pwd)/../

cd ${project_path} 
#拉取源码
git clone https://github.com/Seeed-Solution/SenseCAP-DataVirt-SaaS-Example.git 


cd SenseCAP-DataVirt-SaaS-Example/sensecap_webapi

mvn clean package
mvn -DskipTests=true package

cd ${project_path}
cd SenseCAP-DataVirt-SaaS-Example/sensecap_demo

npm install 
npm run build

cd ${project_path}
cd SenseCAP-DataVirt-SaaS-Example/

docker-compose build
docker-compose up
