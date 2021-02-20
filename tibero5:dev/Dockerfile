FROM sea5727/centos7:dev

# parameter
ARG rootpw=root
ARG userid=tibero
ARG home=/home/tibero
ARG tbhome=/home/tibero/Tibero/tibero5
ARG groupid=mygroup
ARG uid=1000
ARG gid=50

# user setting
RUN echo 'root' | passwd --stdin root; \
groupadd ${groupid}; \
adduser -G ${groupid} ${userid}; \
chown ${userid}:${groupid} /home/${userid} -R; \
echo 'export PKG_ROOT=${HOME}' >> /home/${userid}/.bashrc; \
echo 'export TB_HOME=/home/tibero/Tibero/tibero5' >> /home/${userid}/.bashrc; \
echo 'export TB_SID=tibero' >> /home/${userid}/.bashrc; \
echo 'export LD_LIBRARY_PATH=$TB_HOME/lib:$TB_HOME/client/lib' >> /home/${userid}/.bashrc; \
echo 'export PATH=$PATH:$TB_HOME/bin:$TB_HOME/client/bin' >> /home/${userid}/.bashrc;

COPY --chown=${userid}:${groupid} ./pkg /home/${userid}

# login
USER ${userid}

CMD source /home/tibero/.bashrc && /home/tibero/tibero_run.sh && /bin/bash

# RUN ${tbhome}/config/gen_tip.sh
# RUN tbboot nomount
# RUN tbsql sys/tibero @~/create_db.sql
# RUN tbboot
# RUN ${tbhome}/scripts/system.sh

# CMD ["echo", "hello", ${userid}]
