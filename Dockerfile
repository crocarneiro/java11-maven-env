FROM ubuntu:18.04

VOLUME [ "/source" ]

# Instalando OPENJDK 11
RUN apt-get update && apt-get --yes install wget
RUN wget https://download.java.net/openjdk/jdk11/ri/openjdk-11+28_linux-x64_bin.tar.gz
RUN tar -zxvf openjdk-11+28_linux-x64_bin.tar.gz
RUN mv jdk-11 /opt/
ENV JAVA_HOME=/opt/jdk-11
ENV PATH=/opt/jdk-11/bin:$PATH

# Instalando MAVEN
RUN apt-get update && apt-get --yes install maven