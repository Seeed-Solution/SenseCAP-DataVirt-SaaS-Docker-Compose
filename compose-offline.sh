#!/bin/bash
project_path=$(cd `dirname $0`; pwd)/

cd ${project_path}

mkdir SenseCAP-DataVirt-SaaS-Example

cp .env  SenseCAP-DataVirt-SaaS-Example/
cp docker-compose-offline.yaml  SenseCAP-DataVirt-SaaS-Example/

cd SenseCAP-DataVirt-SaaS-Example


docker-compose up -d -f docker-compose-offline.yaml

echo -e "Server is running, please visit \033[43;37mhttp://localhost:6060"
