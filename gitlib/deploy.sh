mkdir data/data \
&& mkdir data/config \
&& mkdir data/logs \
&& docker stack deploy --compose-file docker-compose.yml gitlab