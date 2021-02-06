FROM centos:7

# echo 'your_root_password' | passwd --stdin root
RUN echo 'root' | passwd --stdin root

# install your yum pacakge 
RUN yum groupinstall -y 'Development Tools'
RUN yum -y install net-tools 
RUN yum -y install unixODBC-devel

# group and user
RUN groupadd mygroup
RUN useradd ysh8361 -G mygroup

# login
USER ysh8361

# mv to home
WORKDIR /home/ysh8361

# environment
RUN echo 'export PKG_ROOT=${HOME}' >> ~/.bashrc
RUN source ~/.bashrc

RUN mkdir -p ~/bin
RUN mkdir -p ~/config
RUN mkdir -p ~/key
RUN mkdir -p ~/log
RUN mkdir -p ~/tmp

CMD ["echo", "hello ysh8361"]
