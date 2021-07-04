#!/bin/bash

ELASTICSEARHC_DOCKER_VERSION="7.12.1"
KIBANA_DOCKER_VERSION=${ELASTICSEARHC_DOCKER_VERSION}
ELASTICSEARCH_CONTAINER_NAME="elasticsearch"
KIBANA_CONTIANER_NAME="kibana"

sudo docker pull elasticsearch:${ELASTICSEARHC_DOCKER_VERSION}
sudo docker pull kibana:${KIBANA_DOCKER_VERSION}

sudo docker run -d --name elasticsearch --net dev -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:${ELASTICSEARHC_DOCKER_VERSION}
sudo docker run -d --name kibana --net dev -p 5601:5601 kibana:${KIBANA_DOCKER_VERSION}
