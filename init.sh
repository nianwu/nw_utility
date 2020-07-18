docker cp init_indocker.sh manager_1:/root/init.sh && \
docker exec -it manager_1 sh /root/init.sh && \
docker exec -it manager_1 rm /root/init.sh
