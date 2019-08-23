# dockerbiosensor

# Perform docker container image with the software of data vizualistation biosensor
  
***

![docker](https://github.com/cdesterke/dockerbiosensor/blob/master/docker.png)

***

### create the docker image with the dockerfile (size 727 megaOctets)
> docker build - < Dockerfile -t biosensor:0.1.0

### put the txt tab data file in data direction of the user

### start the docker 
> docker run -it -v /home/USER/data/:/opt/biosensor/data biosensor:0.1.0 /bin/bash

### inside the docker copy data inside the good direction
> cp /opt/biosensor/data/*.txt /opt/biosensor/

### execute the biosensor software on the data
> ./start.sh "patient_1"

### inside the docker copy data inside the direction of the share volume
> cp /opt/biosensor/*.zip /opt/biosensor/data/


### remove the data after usage
> rm /opt/biosensor/*.zip
#
> rm /opt/biosensor/data/*.txt

### exit the docker image
> exit
