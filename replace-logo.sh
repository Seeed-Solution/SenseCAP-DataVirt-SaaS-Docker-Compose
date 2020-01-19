#!/bin/bash
project_path=$(cd `dirname $0`; pwd)/

cd ${project_path}


# get logo filename
export sensecap_saas_logo_filename=$(docker exec -it webdemo sh -c "ls -l --color=never /usr/share/nginx/html/img | sed -E -e '1d; s/^([^ ]+ +){8}//' | grep seeed")

# replace with new image
docker cp logo_replace_me.png webdemo:/usr/share/nginx/html/img/${sensecap_saas_logo_filename%?}

echo 'replace logo success......'
