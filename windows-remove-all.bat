docker run -it -v /var/run/docker.sock:/var/run/docker.sock -v %cd%:/saasc jancee/seeed-docker-ubuntu:1.0 sh -c "cd /saasc && chmod +x  ./remove-all.sh &&  dos2unix ./remove-all.sh && ./remove-all.sh ; cd /saasc && bash"