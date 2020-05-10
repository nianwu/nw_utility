# FROM docker pull mcr.microsoft.com/dotnet/core/sdk:3.1 AS sdk
FROM registry.cn-beijing.aliyuncs.com/nianwu/mcr.microsoft.com-dotnet-core-sdk:3.1 AS sdk
WORKDIR /src

# FROM docker pull mcr.microsoft.com/dotnet/core/aspnet:3.1 AS base
FROM registry.cn-beijing.aliyuncs.com/nianwu/mcr.microsoft.com-dotnet-core-aspnet:3.1 AS base
WORKDIR /app

# ------------------------- code -------------------------
# 使用官方文档生成代码
FROM sdk AS code
ARG IS4_VERSION
RUN dotnet new -i IdentityServer4.Templates
# ef server
RUN dotnet new is4aspid --allow-scripts yes -n IdentityServer --force

# ------------------------- restore -------------------------
FROM sdk AS restore
COPY --from=code /src/IdentityServer/IdentityServer.csproj IdentityServer/IdentityServer.csproj
RUN dotnet restore IdentityServer/IdentityServer.csproj

# ------------------------- build -------------------------
FROM resotre AS build
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
RUN dotnet IdentityServer.dll /seed
ENTRYPOINT dotnet IdentityServer.dll