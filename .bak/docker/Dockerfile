FROM centos:7 as base
RUN yum install -y yum-utils device-mapper-persistent-data lvm2
RUN yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
RUN yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
RUN yum install -y docker-ce docker-ce-cli containerd.io
RUN mkdir -p /etc/docker
RUN echo "{\"registry-mirrors\": [\"https://z9rmsk3x.mirror.aliyuncs.com\"]}" > /etc/docker/daemon.json
ENTRYPOINT [ "dockerd" ]
CMD [ "DOCKER" ]