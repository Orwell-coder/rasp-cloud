#!/usr/bin/env bash

UPGRADE_DIR=$(cd "$(dirname "$0")"; pwd)
TARGET_DIR=/opt/rasp-cloud
# check the uid
if [ "$(id -u)" != "0" ]; then
    echo -e "\033[31mI am not root.\033[0m"
    exit 1
fi

if [ ! -d "${TARGET_DIR}" ]; then
    mkdir -p ${TARGET_DIR}
fi

mkdir -p ${TARGET_DIR}/conf ${TARGET_DIR}/data ${TARGET_DIR}/logs

cp -rf ${UPGRADE_DIR}/conf/rasp ${TARGET_DIR}/conf

cp -rf ${UPGRADE_DIR}/conf/docker-compose.yaml ${TARGET_DIR}

cd ${TARGET_DIR} && docker compose up -d 

[ &? == 0 ] && echo -e "\033[32mInstall success.\033[0m" || echo -e "\033[31mInstall failed.\033[0m"