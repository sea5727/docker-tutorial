FROM centos:7

# parameter
ARG userid=ysh8361
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

RUN groupadd mygroup
RUN adduser -G mygroup ${userid}

# mv to home
WORKDIR /home/${userid}

COPY ./pkg /home/${userid}
RUN chown ${userid}:mygroup /home/${userid} -R

# login
USER ${userid}

# environment
RUN echo 'export PKG_ROOT=${HOME}' >> ~/.bashrc
RUN source ~/.bashrc



CMD ["echo", "hello", ${userid}]
