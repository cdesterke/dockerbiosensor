FROM r-base
MAINTAINER CHRIS<christophe.desterke@gmail.com>
RUN apt-get update -y
RUN apt-get install -y git
WORKDIR /opt
RUN git clone https://github.com/cdesterke/biosensor.git
WORKDIR /opt/biosensor
RUN chmod 777 start.sh
WORKDIR /opt/biosensor/lib 
RUN chmod 777 biosensor2.r
WORKDIR /opt/biosensor/
