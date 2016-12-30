# myjenkins
1. 在镜像中安装docker engine 和 docker compose，使得 jeknins 可以构建docker image
2. 挂载host的docker.sock到容器中，这样可以不必启动容器中的 docker daemon 而且共享host的
3. 注意：即使 docker.sock 权限在启动时修改过，但docker-compose 依旧需要使用 sudo，为保险起见，请在docker命令前都加上sudo
4. 脚本会在当前目录的 jenkins_home 到容器，该防止重新生成容器时数据丢失。
