FROM sea5727/centos7:dev

# parameter
ARG userid=tibero
ARG tbhome=/home/tibero/Tibero/tibero5
ARG home=/home/tibero
ARG groupid=mygroup
ARG uid=1000
ARG gid=50

# echo 'your_root_password' | passwd --stdin root
RUN echo 'root' | passwd --stdin root


# group and user
RUN groupadd ${groupid}
RUN adduser -G ${groupid} ${userid}

# cd user home
WORKDIR /home/${userid}

COPY ./pkg /home/${userid}
COPY ./tmp/license.xml ${tbhome}/license
COPY ./tmp/create_db.sql ${home}

RUN chown ${userid}:${groupid} /home/${userid} -R

RUN echo 'export PKG_ROOT=${HOME}' >> /home/${userid}/.bashrc
RUN echo 'export TB_HOME=/home/tibero/Tibero/tibero5' >> /home/${userid}/.bashrc
RUN echo 'export TB_SID=tibero' >> /home/${userid}/.bashrc
RUN echo 'export LD_LIBRARY_PATH=$TB_HOME/lib:$TB_HOME/client/lib' >> /home/${userid}/.bashrc
RUN echo 'export PATH=$PATH:$TB_HOME/bin:$TB_HOME/client/bin' >> /home/${userid}/.bashrc

# login
USER ${userid}

ENTRYPOINT /bin/bash -c "source ~/.bashrc"

# RUN ${tbhome}/config/gen_tip.sh
# RUN tbboot nomount
# RUN tbsql sys/tibero @~/create_db.sql
# RUN tbboot
# RUN ${tbhome}/scripts/system.sh

# CMD ["echo", "hello", ${userid}]
