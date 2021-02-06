FROM centos:7
# echo 'your_root_password' | passwd --stdin root
RUN echo 'root' | passwd --stdin root

# install your yum pacakge 
RUN yum groupinstall -y 'Development Tools'


RUN groupadd mygroup

RUN useradd ysh8361 -G mygroup

USER ysh8361

WORKDIR /home/ysh8361

CMD ["echo", "hello ysh8361"]
