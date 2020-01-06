#!/bin/bash

project_path=$(cd `dirname $0`; pwd)/

cd ${project_path}


cd  SenseCAP-DataVirt-SaaS-Example/
docker-compose stop
docker-compose kill
docker-compose rm


cd ${project_path}
rm -rf SenseCAP-DataVirt-SaaS-Example/
