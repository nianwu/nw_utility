mkdir -p \
    ~/data/gitlib/config \
    ~/data/gitlib/data \
    ~/data/gitlib/logs \
    ~/data/registry \
    ~/data/ui.docker \
    ~/data/swarm1/manager_1 \
    ~/data/swarm1/manager_2 \
    ~/data/swarm1/manager_3 \
    ~/data/swarm1/worker_1 \
    ~/data/swarm1/worker_2 \
    ~/data/swarm1/worker_3 \
&& docker cp .init_indocker.sh manager_1:/root/init.sh \
&& docker exec -it manager_1 sh /root/init.sh \
&& docker exec -it manager_1 rm /root/init.sh
