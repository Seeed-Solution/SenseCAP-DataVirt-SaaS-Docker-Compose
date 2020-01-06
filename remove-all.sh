#!/bin/bash

project_path=$(cd `dirname $0`; pwd)/

cd ${project_path}

if [ -d "./SenseCAP-DataVirt-SaaS-Example" ]; then
    cd  SenseCAP-DataVirt-SaaS-Example
    docker-compose stop -t 1
    docker-compose kill
    docker-compose rm -f
fi


cd ${project_path}
rm -rf SenseCAP-DataVirt-SaaS-Example
