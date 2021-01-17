# Dockerfile

``` Dockerfile
# 기본적인 뼈대 Dockerfile

# from 을 사용하여 baseImage 명시 ex) ubuntu:14.04
FROM baseImage

# 추가적으로 필요한 파일들을 다운로드 받는다.
RUN command

# 컨테이너 시작 시 실행 될 명령어를 명시한다.

CMD ["executable"]

```
### FROM
-   이미지 생성시 Base Image
-   ex) ubuntu:14.04

### RUN
-    도커 이미지가 생성되기 전에 수행할 쉘 명령어

### CMD
-   컨테이너가 시작 될 때 실행할 파일 또는 쉘 스크립트
-   DockerFile 내 1회만 가능

### COPY
-   ex) COPY $1 $2 
-   $1 의 파일을 $2로 복사

### WORKDIR
-   이미지안에서 APP 소스코드를 가지고 있을 디렉터리 설정
