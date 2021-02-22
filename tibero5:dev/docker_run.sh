#!/bin/sh

docker run -d --privileged \
--name tibero5 \
--cap-add=SYS_ADMIN --security-opt=seccomp:unconfined \
-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
-v /tmp/run/$(mktemp -d):/run \
-p 8629:8629 \
-h MYTIBERO \
sea5727/tibero5:dev
