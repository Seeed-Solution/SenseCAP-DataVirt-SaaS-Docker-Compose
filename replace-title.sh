#!/bin/bash
project_path=$(cd `dirname $0`; pwd)/

cd ${project_path}


echo -n "Please Input New Title: "
read #newtitle
echo $REPLY


if [ ! "${REPLY}" ]; then
    echo 'failure'
    exit 1
fi

docker exec -it webdemo sh -c "grep 'Smart Agriculture Monitoring Data Platform' -rl /usr/share/nginx/html/js | xargs sed -i 's:Smart Agriculture Monitoring Data Platform:${REPLY}:g'"
docker exec -it webdemo sh -c "grep '智慧农业监控数据平台' -rl /usr/share/nginx/html/js | xargs sed -i 's:智慧农业监控数据平台:${REPLY}:g'"

echo "Title changed to: "$REPLY
