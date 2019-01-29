FROM ubuntu
ADD . /app
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y npm openssh-server mysql-server
RUN cd /app && npm install
CMD /etc/init.d/mysql start & /etc/init.d/sshd start & npm start
