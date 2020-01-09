docker run -it -v /var/run/docker.sock:/var/run/docker.sock -v %cd%:/saasc jancee/seeed-docker-ubuntu:1.0 sh -c "cd /saasc && chmod +x compose.sh && ./compose.sh; cd /saasc && bash"
