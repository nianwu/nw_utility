# README

## 目录

```text
.
├── README.md
├── app
├── deploy.sh
├── dns
├── docker-registry
├── docker-ui
├── gateway
├── gitlab
├── identity_server_4
├── mongo
├── mysql
├── nfs
└── redis
```

## 配置

|   前缀    |    键    |  类型  |  示例  |
| :-------: | :------: | :----: | :----: |
| COMPOSE\_ | DATADIR  | string | ~/data |
| COMPOSE\_ | REGISTRY | string |        |

## GITLAB

### Runner

- Runner 运行命令
  ``` sh
  gitlab-runner register
  ```

## TEMP

- 自动转储镜像
- 日报构建器

## QA

- It's possible that too few managers are online. Make sure more than half of the managers are online.
  > run command: ```docker swarm init --force-new-cluster --advertise-addr 10.1.2.21```