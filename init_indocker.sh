docker swarm init --advertise-addr 10.1.1.21 && \
export manager_token=$(docker -H manager_1 swarm join-token manager -q) && \
export worker_token=$(docker -H manager_1 swarm join-token worker -q) && \
docker -H 10.1.1.22 swarm join --token $manager_token manager_1:2377 && \
docker -H 10.1.1.23 swarm join --token $manager_token manager_1:2377 && \
docker -H 10.1.1.24 swarm join --token $worker_token manager_1:2377 && \
docker -H 10.1.1.25 swarm join --token $worker_token manager_1:2377 && \
docker -H 10.1.1.26 swarm join --token $worker_token manager_1:2377