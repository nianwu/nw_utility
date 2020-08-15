export subnet=10.1.2 && \
docker swarm init --advertise-addr ${subnet}.21 && \
export manager_token=$(docker -H manager_1 swarm join-token manager -q) && \
export worker_token=$(docker -H manager_1 swarm join-token worker -q) && \
docker -H ${subnet}.22 swarm join --token $manager_token manager_1:2377 && \
docker -H ${subnet}.23 swarm join --token $manager_token manager_1:2377 && \
docker -H ${subnet}.24 swarm join --token $worker_token manager_1:2377 && \
docker -H ${subnet}.25 swarm join --token $worker_token manager_1:2377 && \
docker -H ${subnet}.26 swarm join --token $worker_token manager_1:2377