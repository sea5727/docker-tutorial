FROM centos:7

# parameter
ARG uid=1000
ARG gid=50

# echo 'your_root_password' | passwd --stdin root
RUN echo 'root' | passwd --stdin root

# install your yum pacakge 
RUN rpm --import /etc/pki/rpm-gpg/RPM*
RUN yum update -y
RUN yum groups mark convert -y
RUN yum groupinstall -y 'Development Tools' --setopt=group_package_types=mandatory,default,optional
RUN yum -y install net-tools 
RUN yum -y install unixODBC-devel

# group and user
# RUN addgroup --gid $gid mygroup
# RUN adduser --uid $uid --gid $gid ysh8361

RUN groupadd mygroup
RUN adduser -G mygroup ysh8361

# mv to home
WORKDIR /home/ysh8361

COPY ./pkg /home/ysh8361
RUN chown ysh8361:mygroup /home/ysh8361 -R

# login
USER ysh8361

# environment
RUN echo 'export PKG_ROOT=${HOME}' >> ~/.bashrc
RUN source ~/.bashrc



CMD ["echo", "hello ysh8361"]
