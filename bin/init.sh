if [ ! -f /minecraft/server.properties ]; then
  mkdir /minecraft
  mv /docker_init/* /minecraft/
  java -Xmx2G -Xms2G -jar /minecraft/minecraft_server.1.19.2.jar nogui
else
  rm -rf /docker_init/*
  java -Xmx2G -Xms2G -jar /minecraft/minecraft_server.1.19.2.jar nogui
fi