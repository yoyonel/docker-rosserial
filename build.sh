#!/bin/bash
docker build \
	--build-arg http_proxy=http://proxy.ign.fr:3128 \
	--build-arg HTTP_PROXY=http://proxy.ign.fr:3128 \
	--tag ros/rosserial:indigo .
