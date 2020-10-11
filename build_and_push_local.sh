./mkdir.sh \
&& docker-compose --env-file .local.env build \
&& docker-compose --env-file .local.env push
