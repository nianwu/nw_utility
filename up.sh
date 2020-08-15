mkdir -p \
    ~/data/swarm1/manager_1 \
    ~/data/swarm1/manager_2 \
    ~/data/swarm1/manager_3 \
    ~/data/swarm1/worker_1 \
    ~/data/swarm1/worker_2 \
    ~/data/swarm1/worker_3 \
&& docker-compose -f docker-compose.docker.yml build \
&& docker-compose -f docker-compose.docker.yml push \
&& docker-compose -f docker-compose.docker.yml up -d --remove-orphans