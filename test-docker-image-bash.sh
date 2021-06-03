# 启动build出来的镜像，并通过/bin/bash 进入容器内部，用于检查镜像中的文件是否正确
source ./env.sh
echo "镜像信息"
sudo docker inspect ${IMG_NAME}

echo "启动镜像"
#sudo docker run -e TZ="Asia/Shanghai" -it --rm ${IMG_NAME} /bin/bash
sudo docker run -it --rm ${IMG_NAME} /bin/bash

echo "复核所有的容器"
sleep 1
sudo docker ps -a