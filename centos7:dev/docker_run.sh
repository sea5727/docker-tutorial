#!/bin/sh

docker run -d --privileged \
--name centos7 \
--cap-add=SYS_ADMIN --security-opt=seccomp:unconfined \
-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
-v /tmp/run/$(mktemp -d):/run \
sea5727/centos7:dev