#!/bin/bash
project_path=$(cd `dirname $0`; pwd)/

cd ${project_path}

mkdir SenseCAP-DataVirt-SaaS-Example

cp .env  SenseCAP-DataVirt-SaaS-Example/
cp docker-compose-offline.yaml  SenseCAP-DataVirt-SaaS-Example/

cd SenseCAP-DataVirt-SaaS-Example


docker-compose up --no-start -f docker-compose-offline.yaml
docker cp mysqldata/sensecap_monitor.sql mysql:/docker-entrypoint-initdb.d/sensecap_monitor.sql
docker start mysql webapi webdemo

echo -e "Server is running, please visit \033[43;37mhttp://localhost:6060"
