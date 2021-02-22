FROM sea5727/centos7:dev

# parameter
ARG rootpw=root
ARG userid=tibero
ARG home=/home/tibero
ARG tbhome=/home/tibero/Tibero/tibero5
ARG groupid=mygroup
ARG uid=1000
ARG gid=50

RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] ||  rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;

# user setting
RUN echo 'root' | passwd --stdin root; \
groupadd ${groupid}; \
adduser -G ${groupid} ${userid}; \
usermod -aG wheel ${userid}; \
chown ${userid}:${groupid} /home/${userid} -R; \
echo 'export PKG_ROOT=${HOME}' >> /home/${userid}/.bashrc; \
echo 'export TB_HOME=/home/tibero/Tibero/tibero5' >> /home/${userid}/.bashrc; \
echo 'export TB_SID=tibero' >> /home/${userid}/.bashrc; \
echo 'export LD_LIBRARY_PATH=$TB_HOME/lib:$TB_HOME/client/lib' >> /home/${userid}/.bashrc; \
echo 'export PATH=$PATH:$TB_HOME/bin:$TB_HOME/client/bin' >> /home/${userid}/.bashrc;

COPY --chown=${userid}:${groupid} ./pkg /home/${userid}

# # login
# USER ${userid}

VOLUME ["/sys/fs/cgroup"]

EXPOSE 8629

CMD ["/usr/sbin/init"]
# CMD source /home/tibero/.bashrc && /home/tibero/tibero_run.sh && /usr/sbin/init && /bin/bash
