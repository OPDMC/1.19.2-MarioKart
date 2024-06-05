![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/1.19.2-mariokart/v2.0?arch=amd64&label=AMD64%20v2.0&color=006688)

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/1.19.2-mariokart/v1.0?arch=amd64&label=AMD64%20v1.0&color=006688)

---

# [1.19.2-MarioKart v2.0](https://github.com/OPDMC/1.19.2-MarioKart/releases/tag/v2.0)

> [!IMPORTANT]
> By using this project, you acknowledge and agree that the [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) is automatically set to TRUE.
>
> 使用本项目即表示您承认并同意 [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) 已自动设置为 TRUE。

> [!WARNING]  
> **Update from `v1.X` to `v2.X`**: Need to add a  `start.sh` file in `-v /path/to/store/data:/minecraft` folder like [(file raw)](https://github.com/OPDMC/1.19.2-MarioKart/raw/v2.0/minecraft_server/start.sh)

<a href='https://hub.docker.com/r/opdmc/1.19.2-mariokart'><img src="https://img.shields.io/badge/-DockerHub-1c90ed?style=flat&amp;logo=Docker&amp;logoColor=white" referrerpolicy="no-referrer" alt="DockerHub"></a> <a href='https://quay.io/repository/opdmc/1.19.2-mariokart'><img src="https://img.shields.io/badge/-Quay.io-ee0000?style=flat&amp;logo=RedHat&amp;logoColor=white" referrerpolicy="no-referrer" alt="Quay.io"></a>

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/1.19.2-mariokart/v2.0?arch=amd64&label=AMD64%20v2.0&color=006688)

### Usage

```shell
# DockerHub
docker pull opdmc/1.19.2-mariokart:v2.0
# Quay.io
docker pull quay.io/opdmc/1.19.2-mariokart:v2.0
```

```shell
docker run -d \
  --name=1.19.2-mariokart \
  -p 127.0.0.1:80:25565/tcp \
  -v /path/to/store/data:/minecraft \
  opdmc/1.19.2-mariokart
```

### Changelog
**Full Changelog**: https://github.com/OPDMC/1.19.2-MarioKart/compare/v1.0...v2.0

# [1.19.2-MarioKart v1.0](https://github.com/OPDMC/1.19.2-MarioKart/releases/tag/v1.0)

> [!IMPORTANT]
> By using this project, you acknowledge and agree that the [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) is automatically set to TRUE.
>
> 使用本项目即表示您承认并同意 [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) 已自动设置为 TRUE。

<a href='https://hub.docker.com/r/opdmc/1.19.2-mariokart'><img src="https://img.shields.io/badge/-DockerHub-1c90ed?style=flat&amp;logo=Docker&amp;logoColor=white" referrerpolicy="no-referrer" alt="DockerHub"></a> <a href='https://quay.io/repository/opdmc/1.19.2-mariokart'><img src="https://img.shields.io/badge/-Quay.io-ee0000?style=flat&amp;logo=RedHat&amp;logoColor=white" referrerpolicy="no-referrer" alt="Quay.io"></a>

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/1.19.2-mariokart/v1.0?arch=amd64&label=AMD64%20v1.0&color=006688)

### Usage

```shell
# DockerHub
docker pull opdmc/1.19.2-mariokart:v1.0
# Quay.io
docker pull quay.io/opdmc/1.19.2-mariokart:v1.0
```

```shell
docker run -d \
  --name=1.19.2-mariokart \
  -p 127.0.0.1:80:25565/tcp \
  -v /path/to/store/data:/minecraft \
  opdmc/1.19.2-mariokart
```

### Changelog
**Full Changelog**: https://github.com/OPDMC/1.19.2-MarioKart/commits/v1.0