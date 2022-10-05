#!/bin/bash

mkdir repo_script
cd repo_script/

git clone https://github.com/Greys5/docker-nginx.git

cd docker-ngnix/

docker build -t nginx-app . && docker run -p 8081:80 -it nginx-app

