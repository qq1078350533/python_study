# 启动基本镜像
FROM ubuntu
# 运行安装软件信息
ADD ./requeriments.txt /home
WORKDIR /home
RUN apt-get update && apt-get install python3-pip -y && pip3 install -r requeriments.txt
# 导入项目文件
ADD ./meiduo_mall /home/meiduo_mall
WORKDIR /home/meiduo_mall
# 指定对外开发端口
EXPOSE 8001
# 运行项目
ENTRYPOINT Uwsgi --ini Uwsgi.ini