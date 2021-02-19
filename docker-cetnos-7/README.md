# centos7

커스텀 ceotos 7

hostname을 변경하기 위해서는

-h 호스트네임
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
