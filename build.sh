
dangling=$(docker images --filter dangling=true -q)
if [ ! -z ${dangling} ]; then
    echo "构建删除中间镜像 ${dangling}"
    sudo docker rmi ${dangling}
fi

source ./env.sh
sudo docker build -t ${IMG_NAME} .

echo "------------------------"
echo "${IMG_NAME} 构建完成"
