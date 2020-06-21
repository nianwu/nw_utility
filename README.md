# 规划

## 域名解析服务

### 反向代理

- 使用**nginx**实现

#### http 代理

#### tcp 代理

### dns 服务器

- 未定
- 要求
  - 可视化操作
  - 基于配置文件

## 虚拟化方案

- docker
  - 应用环境 x3(开发、预生产、生产)
    - appswarm
      - manager x3
      - worker x3
    - redis 集群
      - 分片 x3
      - 备份 x3
    - mongodb 集群
      - 分片 x3
      - 备份 x3
    - sqlserver x1
    - mysql x1
    - 文件服务器 x1
    - 网关服务器 x1
  - 基础设施
    - gitlab

## 基础设施

### sqldb

- sqlserver
- sqllite
- mysql

### nosqldb

- mongo
- es

### kvdb

- redis

### 词向量数据库

- 4word 什么的

### 文件服务器

- nfs
