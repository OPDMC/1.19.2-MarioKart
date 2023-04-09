<div align="center">
	<img src="https://github.com/OPDMC/1.19.2-MarioKart/raw/main/%23README/icon_512.png" width="20%"/>
    <h1>1.19.2-MarioKart <code>v1.0</code></h1>
	<a href='https://github.com/OPDMC/1.19.2-MarioKart'><img src="https://img.shields.io/badge/-GitHub-3A3A3A?style=flat&amp;logo=GitHub&amp;logoColor=white" referrerpolicy="no-referrer" alt="GitHub"></a>
	<a href='https://quay.io/repository/opdmc/1.19.2-mariokart'><img src="https://img.shields.io/badge/-Quay.io-ee0000?style=flat&amp;logo=RedHat&amp;logoColor=white" referrerpolicy="no-referrer" alt="Quay.io"></a>
    </tr>
</div>

## 1 Description

这是OPDMC群友自用的Docker化MC服务器。其目的是为了便于部署。服务器的整合包文件等均非原创。原作者在下方的 `3 Reference` 中注明了，请尊重原作者版权。

This is a Dockerized Minecraft server for personal use by members of the OPDMC group, its purpose is to facilitate deployment. The integrated package files of the server are not original, and the original author is indicated in `3 Reference` down below, please respect the copyright of the original author.

## 2 Usage

```shell
docker pull quay.io/opdmc/1.19.2-mariokart:latest
```

```shell
docker run -d \
  --name=1.19.2-mariokart \
  -p 127.0.0.1:80:25565/tcp \
  -v /path/to/store/data:/minecraft \
  quay.io/opdmc/1.19.2-mariokart:latest
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
