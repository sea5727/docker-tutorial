# centos7

커스텀 ceotos 7

hostname을 변경하기 위해서는

### hostname
```
$ docker run -i -t -d -h MYTIBERO --name centos7 sea5727/centos7:dev /bin/bash 
```

### systemctl

Centos로 다운받은 도커는 deamon을 실행 할 때 권한 문제로 인하여 cgroup을 이용 할 수 없어 systemctl command를 사용 할 수 없다.
따라서 다음 방법으로 docker를 run 하면 해당 문제를 해결 가능하다.
아래의 예시는 systemctl을 이용하여 crontab의 status를 확인하는 예제이다.

```
$ sudo docker run -d —privileged —name centos /sbin/init
$ sudo docker exec -i -t centos /bin/bash
$ systemctl start crond
$ systemctl status crond
```

### Systemd integration

](https://daftdevil.tistory.com/17)

Systemd는 기본적으로 centos:7과 centos:latest에 포함되어 있지만 기본적으로 활성화되어있지 않다. 실행시키기 위해서 아래 텍스트를 포함시켜야 한다.

```Dockerfile
Dockerfile for systemd base image
FROM centos:7
ENV container docker
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]
```
This Dockerfile deletes a number of unit files which might cause issues. From here, you are ready to build your base image.
```
$ docker build --rm -t local/c7-systemd .
```
