./mkdir.sh \
&& docker-compose build \
&& docker-compose push \
&&  docker-compose config | docker stack deploy \
    --prune \
    -c - \
    --with-registry-auth \
    nw_utility
