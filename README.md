# gitlab-ce

兼容 **ARM64** 和 **AMD64** 架构。

GitHub 地址：[https://github.com/yrzr/gitlab-ce-arm64v8-docker](https://github.com/ayouwangsx/gitlab-ce)

Docker 镜像地址：[https://hub.docker.com/r/yrzr/gitlab-ce-arm64v8](https://hub.docker.com/r/iabsdocker/gitlab-ce)

Blog：https://blog.ayou.ink



## Redis problem

Redis无法在ARM64上使用默认配置启动，这会让gitlab ce无法正常启动。 ~~您必须在新安装或升级时手动更改Redis设置，然后重新启动gitlab ce。~~

从版本16.6.0-ce.0开始，默认情况下，启动时将在redis.conf中添加“忽略ARM64-COW-BUG的警告”。您不再需要手动添加它。

在该项目中已根据CPU架构自动更新Redis配置文件，拉取镜像后就可直接启动运行。
