# 构建镜像
# docker build -t cloudreve:3.8.3 . --build-arg "HTTPS_PROXY=http://192.168.81.100:7890"
# 删除构件中的临时镜像
docker image prune -f
# 停止旧容器
docker stop cloudreve
# 删除老容器
docker rm cloudreve
# 启动服务
docker run -d --name cloudreve -p 5200:5200 -v /mnt/host/d/docker/cloudreve/cloudreve.db:/cloudreve/cloudreve.db -v /mnt/host/d/docker/cloudreve/conf.ini:/cloudreve/conf.ini -v /mnt/host/d//docker/cloudreve/avatar:/cloudreve/avatar -v /mnt/host/d//docker/cloudreve/uploads:/cloudreve/uploads --restart unless-stopped cloudreve:3.8.3
