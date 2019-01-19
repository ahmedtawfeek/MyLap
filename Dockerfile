FROM centos

RUN yum -y install openssh-server

RUN useradd remote_user && \
    echo "12345" | passwd remote_user --stdin && \
    mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh

RUN chown remote_user:remote_user -R /home/remote_user/.ssh/ && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

RUN /usr/sbin/sshd-keygen

RUN yum -y install mysql

CMD /usr/sbin/sshd -D
