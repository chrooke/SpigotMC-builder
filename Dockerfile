from ubuntu:latest

RUN apt-get update
RUN apt-get install -y default-jdk wget git
RUN mkdir /build-output
WORKDIR /spigot
RUN wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
RUN printf '#!/bin/bash\n\
java -jar BuildTools.jar --rev latest\n\
cp spigot*.jar /build-output\n'\
>> build.sh


