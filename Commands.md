# Docker's Commands

### 생성과 실행
```
$ docker run alpine   
$ docker run ${image} ${command} # command 는 없어도 됨
$ docker run -p 5000:8080 ${image} ${command} ## 포트매핑 
$ docker run -v /usr/src/app/node_modules -v $(pwd):/usr/src/app ${image} # -v 1  node_modules은 매핑하지 않음.  
2. pwd를 /usr/src/app 으로 참조
```

### 생성
```
$ docker create alpine
```
### 실행
```
$ docekr start -a ${ConatinerID} ${command} ## 새로 실행할때 커맨드 실행 ( -a 커맨드를 attatch해서 사용 ? )
$ docker exec ${ConatinerID} ${command} ## 이미 실행중인 컨테이너에서 실행
$ docker exec -it ${ConatinerID} ${command} 이미 실행중인 컨테이너에서 -i interactive -t terminal 옵션으로 실행, 커맨드처럼 붙어서 실행
$ docker exec -it ${ConatinerID} bash/sh 붙어서 사용
```
### 중지
```
$ docker stop ${ContainerID} ## Gracefully stop
$ docker kill ${ContainerID}
```
### 삭제
```
$ docker rm ${ContainerID} 
$ docker rm `docker ps -a -q` ## 전체 삭제
```

### 사용하지 않는 전체 docker 자원 삭제
```
$ docker system prune
WARNING! This will remove:
  - all stopped containers
  - all networks not used by at least one container
  - all dangling images
  - all dangling build cache

Are you sure you want to continue? [y/N] y
Deleted Containers:
14c52396cd15e841b1e9eb9a349e815dab97afeb1334f2776d40dba95a4007d6
145f3e013916ac4cb217873437e00c32690df2ec79c27b3e70f9e07c85ed7dc0
```


### 빌드
```
도커파일로 이 있는 폴더로 이동
$ docker build .
$ docker build -t ${name} . # 이름 ex) -t johnahn/hello:lastest ${도커허브아이디}/${저장소_또는_프로젝트이름}:${버전}
```

### Compose
``
$ docker-compose up # 이미지가 있으면 빌드, 없으면 그냥 실행
$ docker-compose up --build # 이미지가 있든 없든 빌드 후 실행
$ docker-compose up -d # 백그라운드
$ docker-compose down # 도커 compose로 종료
``