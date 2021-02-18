FROM centos:7

# echo 'your_root_password' | passwd --stdin root
RUN echo 'root' | passwd --stdin root

# install your yum pacakge 
# RUN yum grouplist
RUN yum -y install epel-release
RUN yum groups install -y "Base", "Development Tools"
# RUN yum groups install -y "Development Tools" --setopt=group_package_types=mandatory,default,optional
RUN yum -y install net-tools 
RUN yum -y install unixODBC-devel
RUN yum update -y
