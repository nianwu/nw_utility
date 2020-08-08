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