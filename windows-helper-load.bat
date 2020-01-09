docker load -i images/seeed-docker-ubuntu-1.0.tar
docker run -it -v /var/run/docker.sock:/var/run/docker.sock -v %cd%:/saasc jancee/seeed-docker-ubuntu:1.0 sh -c "cd /saasc && chmod +x compose.sh && dos2unix ./compose.sh && dos2unix ./replace-logo.sh && dos2unix ./replace-title.sh && dos2unix ./remove-all.sh && dos2unix ./load.sh && ./load.sh; cd /saasc && bash"
