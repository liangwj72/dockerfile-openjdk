FROM openjdk:8-buster

# 时区为中国
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# 安装 envsubst
RUN apt update && apt -y install gettext-base
