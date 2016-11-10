#!/bin/bash

echo "Restarting puppet agent in containers..."
for container in $(docker ps -a -q); do
     docker exec $container service puppet restart > /dev/null 2>&1
done

# Checking if file has been created...
for container in $(docker ps -a -q); do	
     echo $container;docker exec $container cat /tmp/helloFromMaster
done

