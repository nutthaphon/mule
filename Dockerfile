FROM java

RUN (mv /etc/localtime /etc/localtime.old; ln -s /usr/share/zoneinfo/Asia/Bangkok /etc/localtime)
RUN useradd -ms /bin/bash ubuntu

RUN wget https://repository-master.mulesoft.org/nexus/content/repositories/releases/org/mule/distributions/mule-standalone/3.8.1/mule-standalone-3.8.1.tar.gz
RUN tar xzvf mule-standalone-3.8.1.tar.gz

WORKDIR mule-standalone-3.8.1

EXPOSE 8080-8090

CMD "bin/mule"