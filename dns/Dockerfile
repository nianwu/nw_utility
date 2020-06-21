FROM sameersbn/bind:9.11.3-20190706 as base
RUN sed -i 's/ssl=1/ssl=0/' /etc/webmin/miniserv.conf

FROM base as publish
EXPOSE 10000
EXPOSE 53/tcp
EXPOSE 53/udp