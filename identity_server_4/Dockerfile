# FROM docker pull mcr.microsoft.com/dotnet/core/sdk:3.1 AS sdk
FROM registry.cn-beijing.aliyuncs.com/nianwu/mcr.microsoft.com-dotnet-core-sdk:3.1 AS sdk
RUN sed -i 's#http://deb.debian.org#https://mirrors.163.com#g' /etc/apt/sources.list
WORKDIR /src

# FROM docker pull mcr.microsoft.com/dotnet/core/aspnet:3.1 AS base
FROM registry.cn-beijing.aliyuncs.com/nianwu/mcr.microsoft.com-dotnet-core-aspnet:3.1 AS base
RUN sed -i 's#http://deb.debian.org#https://mirrors.163.com#g' /etc/apt/sources.list
WORKDIR /app

# ------------------------- code -------------------------
# 使用官方文档生成代码
FROM sdk AS code
ARG IS4_VERSION
RUN dotnet new -i IdentityServer4.Templates
# ef server
RUN dotnet new is4aspid --allow-scripts yes -n IdentityServer --force
# 设置数据库存储位置
RUN sed -i "s#AspIdUsers.db;#/data/AspIdUsers.db;#g" IdentityServer/appsettings.json

# ------------------------- restore -------------------------
FROM sdk AS restore
COPY --from=code /src/IdentityServer/IdentityServer.csproj IdentityServer/IdentityServer.csproj
RUN dotnet restore IdentityServer/IdentityServer.csproj

# ------------------------- build -------------------------
FROM restore AS build
COPY --from=code /src/IdentityServer/ IdentityServer/
WORKDIR /src/IdentityServer
RUN dotnet build
# ------------------------- publish -------------------------
FROM build AS publish
WORKDIR /src
RUN dotnet publish IdentityServer -c Release -o /app/publish

# ------------------------- run -------------------------
FROM base AS finaly
COPY --from=publish /app/publish .
ENTRYPOINT dotnet IdentityServer.dll
