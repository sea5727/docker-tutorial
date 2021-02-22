FROM centos:7

RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] ||  rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;

# install your yum pacakge 
RUN rpm --import /etc/pki/rpm-gpg/RPM*; \ 
yum provides '*/applydeltarpm'; \
yum -y install deltarpm; \
yum -y install epel-release; \
yum groups mark install "Development Tools" \
yum groups mark convert "Development Tools" \
yum groups install -y "Development Tools"; \
yum -y install wget sudo git net-tools openssl vim rdate which; \
yum -y install unixODBC-devel; \
yum -y install which; \
yum update -y;

VOLUME [ "/sys/fs/cgroup" ]

CMD ["/usr/sbin/init"]
