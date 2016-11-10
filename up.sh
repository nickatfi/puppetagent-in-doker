#!/bin/bash

n=0
SERVER=puppetmaster.local:192.168.1.2


while [[ $n -lt 10 ]]
do
    n=$((n+1))
    docker run -ti -d --add-host puppetmaster.local:192.168.1.2 puppetagent
done

# Restarting puppet agent in containers
for container in $(docker ps -a -q); do
     docker exec $container service puppet restart
done

echo "[+] Environment is up!"

