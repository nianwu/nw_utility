mkdir -p \
    ~/data/gitlab/data \
    ~/data/gitlab/logs \
    ~/data/gitlab/config \
    ~/data/registry \
    ~/data/ui.docker \
    ~/data/redis/single \
&& docker-compose build \
&& docker-compose push \
&&  docker-compose config | docker stack deploy \
    --prune \
    -c - \
    --with-registry-auth \
    nw_utility