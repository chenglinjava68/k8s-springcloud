#!/bin/sh
set -x
set -e

mvn clean package #-Dmaven.test.skip=true
docker build . -t mirror.ghostcloud.cn/microservice/hystrix-dashboard:1.0
docker push mirror.ghostcloud.cn/microservice/hystrix-dashboard:1.0
