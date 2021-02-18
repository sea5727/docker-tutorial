FROM centos:7

# echo 'your_root_password' | passwd --stdin root
RUN echo 'root' | passwd --stdin root

# install your yum pacakge 
# RUN yum grouplist
RUN rpm --import /etc/pki/rpm-gpg/RPM*
RUN yum -y install epel-release
RUN yum groups install -y "Base", "Development Tools"
RUN yum -y install net-tools 
RUN yum -y install unixODBC-devel
RUN yum -y install which
RUN yum update -y
