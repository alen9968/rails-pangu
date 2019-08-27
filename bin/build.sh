#!/bin/bash
docker run  -v $(pwd):/usr/src/app/ -it --rm rails-pangu bundle install
docker build -t rails-pangu -f Dockerfile .
docker tag rails-pangu alen9968/rails-pangu
if [ "$1" = "push" ]; then
  docker push alen9968/rails-pangu
fi
