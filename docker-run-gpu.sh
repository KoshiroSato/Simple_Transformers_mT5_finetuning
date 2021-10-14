 #!/bin/sh

docker build -t simple_mt5 ./Docker
docker run --gpus all --privileged -it -p 8888:8888 -v ${PWD}:/tf/${PWD##*/} -w /tf/${PWD##*/} simple_mt5