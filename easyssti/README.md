# docker的搭建

```shell
docker build -t easyssti .
```



运行docker:

```shell
docker run --restart always --name easyssti -p 2333:8080 -d easyssti

#默认转发至8080了
```



停止docker:

```shell
docker stop dockerid
```



查看docker:

```shell
docker ps
```



删除docker:

```shell
docker rm -f dockerid
```

