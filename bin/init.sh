if [ ! -f /minecraft/server.properties ]; then
  mkdir /minecraft
  mv /docker_init/* /minecraft/
  sh /minecraft/start.sh
else
  rm -rf /docker_init/*
  sh /minecraft/start.sh
fi