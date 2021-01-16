# docker-tutorial


### docker 란?

경량화된 vm, Conatiner based Open Source 

### conatiner 란

다양한 프로그램을 __실행__, 배포, 이동할 수 있는 소프트웨어 환경의 단위

### image 란

컨테이너를 생성하기 위한 파일
실행시 동작 할 명령어와 파일 스냅샷이 작성되어있다.


### 장점
-   


### 설치


### 사용자 설정
```
$ docker run hello-world   
docker: Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Post http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/create: dial unix /var/run/docker.sock: connect: permission denied.
```

docker 가 root 계정으로 설치 된 경우 권한 문제 발생
```
$ usermod -a -G docker ${USER}
$ systemctl restart docker
```


