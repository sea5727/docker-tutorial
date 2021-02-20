#!/bin/sh

docker run -d -i -t \
--name tibero5 \
--cap-add=SYS_ADMIN --security-opt=seccomp:unconfined \
-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
-v /tmp/run/$(mktemp -d):/run \
-h MYTIBERO \
sea5727/tibero5:dev