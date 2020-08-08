docker-compose -f docker-compose.docker.yml build \
&& docker-compose -f docker-compose.docker.yml push \
&& docker-compose -f docker-compose.docker.yml up -d --remove-orphans