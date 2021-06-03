# openjdk 8 扩展版

在官方版本基础上添加 gettext-base，并设置时区为中国，作为其他镜像的基础

```
FROM openjdk:8-buster

# 时区为中国
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# 安装 envsubst
RUN apt update && apt -y install gettext-base
```


