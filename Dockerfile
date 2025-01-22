# 使用官方的Java运行时作为基础镜像
FROM dragonwell-registry.cn-hangzhou.cr.aliyuncs.com/dragonwell/dragonwell:11

# 将本地文件夹挂载到容器中
COPY target/rebuild.jar app.jar

# 配置容器启动后执行的命令
ENTRYPOINT ["java","-jar","/app.jar"]
