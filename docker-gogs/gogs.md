# run 

The Gogs (`/gɑgz/`) project aims to build a simple, stable and extensible self-hosted Git service that can be setup in the most painless way. With Go, this can be done with an independent binary distribution across **ALL platforms** that Go supports, including Linux, macOS, Windows and ARM.



一个轻量的git service，可以很方便的搭建简单的服务。你可以选择自己的数据库比如mysql等，支持了权限控制等基础功能。

#### docker 

```shell
docker run --name=gogs -p 10022:22 -p 10080:3000 -v /home/www/gogs/data:/data gogs/gogs
```

#### config

```shell
cd ~/../data/gogs/conf/   #进入到相应配置文件夹
vi app.ini                #编辑配置文件
```

#### github 

> https://github.com/gogs/gogs

