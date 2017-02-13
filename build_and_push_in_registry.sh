#!/bin/bash
docker build \
	--build-arg http_proxy=http://proxy.ign.fr:3128 \
	--build-arg HTTP_PROXY=http://proxy.ign.fr:3128 \
	--tag 172.20.250.99:5000/li3ds/rosserial:indigo \
    .

docker push 172.20.250.99:5000/li3ds/rosserial:indigo
