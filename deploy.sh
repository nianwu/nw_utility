docker-compose build \
&&  docker-compose config | docker stack deploy \
    --prune \
    -c - \
    --with-registry-auth \
    nw_utility \
&& docker-compose -f docker-compose.docker.yml build \
&& docker-compose -f docker-compose.docker.yml up -d