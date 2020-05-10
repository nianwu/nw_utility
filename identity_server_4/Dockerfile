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
# server
RUN dotnet new -i IdentityServer4.Templates
RUN dotnet new is4empty -n IdentityServer \
    && dotnet new sln -n IdentityServer4 \
    && dotnet sln add IdentityServer
# ADD https://raw.githubusercontent.com/IdentityServer/IdentityServer4/${IS4_VERSION}/samples/Quickstarts/1_ClientCredentials/src/IdentityServer/Config.cs IdentityServer/Config.cs
# ADD https://raw.githubusercontent.com/IdentityServer/IdentityServer4/${IS4_VERSION}/samples/Quickstarts/1_ClientCredentials/src/IdentityServer/Startup.cs IdentityServer/Startup.cs
# ui
WORKDIR /src/IdentityServer
RUN dotnet new is4inmem --force

# ------------------------- build -------------------------
FROM sdk AS build
COPY --from=code /src/IdentityServer/IdentityServer.csproj IdentityServer/IdentityServer.csproj
COPY --from=code /src/IdentityServer4.sln IdentityServer4.sln
RUN dotnet restore IdentityServer/IdentityServer.csproj

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
ENTRYPOINT ["dotnet", "IdentityServer.dll"]