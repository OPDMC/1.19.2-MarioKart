<div align="center">
	<img src="https://github.com/OPDMC/1.19.2-MarioKart/raw/main/%23README/icon_512.png" width="20%"/>
    <h1>1.19.2-MarioKart <code>v2.0</code></h1>
	<a href='https://github.com/OPDMC/1.19.2-MarioKart'><img src="https://img.shields.io/badge/-GitHub-3A3A3A?style=flat&amp;logo=GitHub&amp;logoColor=white" referrerpolicy="no-referrer" alt="GitHub"></a>
	<a href='https://quay.io/repository/opdmc/1.19.2-mariokart'><img src="https://img.shields.io/badge/-Quay.io-ee0000?style=flat&amp;logo=RedHat&amp;logoColor=white" referrerpolicy="no-referrer" alt="Quay.io"></a>
	<a href='https://hub.docker.com/r/opdmc/1.19.2-mariokart'><img src="https://img.shields.io/badge/-DockerHub-1c90ed?style=flat&amp;logo=Docker&amp;logoColor=white" referrerpolicy="no-referrer" alt="DockerHub"></a>
    </tr>
</div>

## 1 Description

这是OPDMC群友自用的Docker化MC服务器。其目的是为了便于部署。服务器的整合包文件等均非原创。原作者在下方的 `3 Reference` 中注明了，请尊重原作者版权。

This is a Dockerized Minecraft server for personal use by members of the OPDMC group, its purpose is to facilitate deployment. The integrated package files of the server are not original, and the original author is indicated in `3 Reference` down below, please respect the copyright of the original author.

### 1.1 Update Rule

版本号用 `vA.B` 表示 (eg: `v1.0`, `v1.1`, `v2.0`)，其中 `A` 的改变表示用 `-v /path/to/store/data:/minecraft` 挂载的持久性文件中需要手动做出一些改变。而 `B` 表示小版本更新，理论上 `v1.0` 可以直接升级到 `v1.1` 因为它们的大版本是相同的。

Version numbers are represented as `vA.B` (e.g., `v1.0`, `v1.1`, `v2.0`), where changes to `A` indicate that some manual modifications are required in the persistent files mounted with `-v /path/to/store/data:/minecraft`. On the other hand, `B` represents minor version updates; theoretically, `v1.0` can be directly upgraded to `v1.1` because they share the same major version.

## 2 Usage

```shell
docker pull quay.io/opdmc/1.19.2-mariokart:v2.0
```

```shell
docker run -d \
  --name=1.19.2-mariokart \
  -p 127.0.0.1:80:25565/tcp \
  -v /path/to/store/data:/minecraft \
  quay.io/opdmc/1.19.2-mariokart:v2.0
```

| Parameter                                       | Function                        |
| ----------------------------------------------- | ------------------------------- |
| `-p 127.0.0.1:80:25565/tcp`                     | Minecraft Server Port                      |
| `-v /path/to/store/data:/minecraft`    | To Store Data In Local       |

## 3 Reference

- **Author For [*Mario Kart in Minecraft!*]**
  - https://github.com/ItsaMeMarvino
  - https://www.planetminecraft.com/member/skyblocksquad/
- **The [*Mario Kart in Minecraft!*] Minecraft Project**
  - https://www.planetminecraft.com/project/mario-kart-in-minecraft-1-19/
- **Texture Pack**
  - https://www.dropbox.com/s/j4lrj0xc1ehlh8h/MCKart.zip?dl=1

## 4 License

Apache License 2.0
