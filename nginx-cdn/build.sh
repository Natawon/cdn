#!/bin/bash
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

docker stop nginx-cdn; docker rm nginx-cdn;
docker run --restart=always --name nginx-cdn -p 80:80  \
-v $PWD/config/etc/nginx/conf.d:/etc/nginx/conf.d \
-v $PWD/config/etc/nginx/nginx.conf:/etc/nginx/nginx.conf \
-v $PWD/data/www:/apps \
-v $PWD/log/nginx:/var/log/nginx \
-d dootvmedia/alpine:nginx

docker ps -a

