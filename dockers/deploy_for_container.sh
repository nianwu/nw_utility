docker run -d --hostname docker1 --privileged -p 30001:2375 --name docker1 dockers-node \
&& docker run -d --hostname docker2 --privileged -p 30002:2375 --name docker2 dockers-node \
&& docker run -d --hostname docker3 --privileged -p 30003:2375 --name docker3 dockers-node