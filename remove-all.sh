#!/bin/bash

project_path=$(cd `dirname $0`; pwd)/

cd ${project_path}

if [ -d "/SenseCAP-DataVirt-SaaS-Example" ]; then
    cd  SenseCAP-DataVirt-SaaS-Example
    docker-compose stop
    docker-compose kill
    docker-compose rm
fi


cd ${project_path}
rm -rf SenseCAP-DataVirt-SaaS-Example
