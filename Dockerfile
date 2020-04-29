FROM openjdk:8-jdk-alpine

MAINTAINER Kuba Wasilewski <k.k.wasilewski@gmail.com>

VOLUME /tmp

EXPOSE 8082

ARG JAR_FILE=target/client-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} client.jar

ENTRYPOINT ["java","-jar","/client.jar"]
