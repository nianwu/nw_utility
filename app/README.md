# init

```sh
# init swarm
-H manager_1 swarm init

# join swarm
export manager_token=$(docker -H manager_1 swarm join-token manager -q) && \
export worker_token=$(docker -H manager_1 swarm join-token worker -q) && \
docker -H manager_2 swarm join --token $manager_token manager_1:2377 && \
docker -H manager_3 swarm join --token $manager_token manager_1:2377 && \
docker -H worker_1 swarm join --token $worker_token manager_1:2377 && \
docker -H worker_2 swarm join --token $worker_token manager_1:2377 && \
docker -H worker_3 swarm join --token $worker_token manager_1:2377
```