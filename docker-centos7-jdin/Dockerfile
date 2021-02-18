FROM sea5727/centos7:dev

# parameter
ARG userid=ysh8361
ARG uid=1000
ARG gid=50

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
