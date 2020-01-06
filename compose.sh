#!/usr/bin/env bash
project_path=$(cd `dirname $0`; pwd)/../

cd ${project_path} 

rm -rf SenseCAP-DataVirt-SaaS-Example/
#拉取源码
git clone https://github.com/Seeed-Solution/SenseCAP-DataVirt-SaaS-Example.git 
#移动修的.env文件到项目路径

cp SenseCAP-DataVirt-SaaS-Docker-Compose/.env  SenseCAP-DataVirt-SaaS-Example/

cd  SenseCAP-DataVirt-SaaS-Example/

docker-compose build
docker-compose up
