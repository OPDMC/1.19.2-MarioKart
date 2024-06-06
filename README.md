> [!IMPORTANT]
> 
> This project is merely a Docker packaging of a server created by others. The server's author is SkyblockSquad, and it was published on [planetminecraft.com](https://www.planetminecraft.com/project/mario-kart-in-minecraft-1-19/). Detailed information is specified in the `3 Reference` section below. Please respect the original author's copyright.
> 
> By using this project, you acknowledge and agree that the [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) is automatically set to TRUE.
> 
> 此项目仅为对他人制作的服务器的 Docker 打包。此服务端作者为 SkyblockSquad，发布于 [planetminecraft.com](https://www.planetminecraft.com/project/mario-kart-in-minecraft-1-19/)，详细信息在下方的 `3 Reference` 中注明了，请尊重原作者版权。
> 
> 使用本项目即表示您承认并同意 [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) 已自动设置为 TRUE。

<div align="center">
	<img src="https://github.com/OPDMC/1.19.2-MarioKart/raw/main/%23README/icon_512.png" width="20%"/>
    <h1>1.19.2-MarioKart <code>v2.1</code></h1>
	<a href='https://github.com/OPDMC/1.19.2-MarioKart'><img src="https://img.shields.io/badge/-GitHub-3A3A3A?style=flat&amp;logo=GitHub&amp;logoColor=white" referrerpolicy="no-referrer" alt="GitHub"></a>
	<a href='https://github.com/OPDMC/1.19.2-MarioKart/pkgs/container/1.19.2-mariokart'><img src="https://img.shields.io/badge/Ghcr.io-v2.1-555555?labelColor=8957E5&style=flat&amp;logo=GitHub&amp;logoColor=white" referrerpolicy="no-referrer" alt="Ghcr.io"></a>
    <a href='https://hub.docker.com/r/opdmc/1.19.2-mariokart'><img src="https://img.shields.io/badge/DockerHub-v2.1-555555?labelColor=1c90ed&style=flat&amp;logo=Docker&amp;logoColor=white" referrerpolicy="no-referrer" alt="DockerHub"></a>
	<a href='https://quay.io/repository/opdmc/1.19.2-mariokart'><img src="https://img.shields.io/badge/Quay.io-v2.0-555555?labelColor=ee0000&style=flat&amp;logo=RedHat&amp;logoColor=white" referrerpolicy="no-referrer" alt="Quay.io"></a>

![Docker Image Size](https://img.shields.io/docker/image-size/opdmc/1.19.2-mariokart?arch=amd64&label=AMD64&color=006688) ![Docker Image Size](https://img.shields.io/docker/image-size/opdmc/1.19.2-mariokart?arch=arm64&label=ARM64&color=008866)
  </tr>
</div>


## 1 Description

这是OPDMC群友自用的Docker化MC服务器。其目的是为了便于部署。服务器的整合包文件等均非原创。原作者在下方的 `3 Reference` 中注明了，请尊重原作者版权。

This is a Dockerized Minecraft server for personal use by members of the OPDMC group, its purpose is to facilitate deployment. The integrated package files of the server are not original, and the original author is indicated in `3 Reference` down below, please respect the copyright of the original author.

### 1.1 Update Rule

版本号用 `vA.B` 表示 (eg: `v1.0`, `v1.1`, `v2.0`)，其中 `A` 的改变表示用 `-v /path/to/store/data:/minecraft` 挂载的持久性文件中需要手动做出一些改变。而 `B` 表示小版本更新，理论上 `v1.0` 可以直接升级到 `v1.1` 因为它们的大版本是相同的。

Version numbers are represented as `vA.B` (e.g., `v1.0`, `v1.1`, `v2.0`), where changes to `A` indicate that some manual modifications are required in the persistent files mounted with `-v /path/to/store/data:/minecraft`. On the other hand, `B` represents minor version updates; theoretically, `v1.0` can be directly upgraded to `v1.1` because they share the same major version.

### 1.2 Client

此服务端为原版纯数据包实现，原版客户端均可连接。

This server is implemented with the original vanilla data pack, and the original vanilla client can connect to it.

## 2 Usage

```shell
# DockerHub
docker pull opdmc/1.19.2-mariokart:latest
# Ghcr.io
docker pull ghcr.io/opdmc/1.19.2-mariokart:latest
# Quay.io (Deprecated)
docker pull quay.io/opdmc/1.19.2-mariokart:v2.0
```

```shell
docker run -d \
  --name=1.19.2-mariokart \
  -p 127.0.0.1:80:25565/tcp \
  -v /path/to/store/data:/minecraft \
  opdmc/1.19.2-mariokart
```

| Parameter                                       | Function                        |
| ----------------------------------------------- | ------------------------------- |
| `-p 127.0.0.1:80:25565/tcp`                     | Minecraft Server Port                      |
| `-v /path/to/store/data:/minecraft`    | To Store Data In Local       |

## 3 Reference

- ***Mario Kart in Minecraft!***
  - **Author**
    - https://www.planetminecraft.com/member/skyblocksquad/
  - **Project Source**
    - https://www.planetminecraft.com/project/mario-kart-in-minecraft-1-19/
  - **Texture Pack**
    - https://www.dropbox.com/s/j4lrj0xc1ehlh8h/MCKart.zip?dl=1

## 4 License

By using this project, you agree to the Minecraft End User License Agreement (EULA). The EULA can be found at the following link: [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula).  This project automatically sets the EULA to true in the Minecraft configuration. By continuing to use this project, you acknowledge that you have read, understood, and agreed to the terms of the Minecraft EULA.

使用本项目即表示您同意《Minecraft 最终用户许可协议》（EULA）。EULA 可通过以下链接查看：[Minecraft EULA](https://account.mojang.com/documents/minecraft_eula)。 本项目会自动在 Minecraft 配置中将 EULA 设置为 true。继续使用本项目即表示您已阅读、理解并同意 Minecraft EULA 的条款。

Apache License 2.0
