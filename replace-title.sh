#!/bin/bash


echo -n "Please Input New Title: "
read newtitle


if [ ! $newtitle ]; then
    echo 'failure'
    exit 1
fi

docker exec -it webdemo sh -c "find /usr/share/nginx/html/js -type f -path "*.js"|xargs sed 's:Smart Agriculture Monitoring Data Platform:'$newtitle':g'"

echo "Title changed to: "$newtitle
