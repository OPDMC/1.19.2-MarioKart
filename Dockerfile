FROM openjdk:17-bullseye
ENV EULA=TRUE
WORKDIR /minecraft
COPY . ./docker_init
COPY ./bin/init.sh ../init.sh
EXPOSE 25565
ENTRYPOINT [ "sh", "../init.sh" ]