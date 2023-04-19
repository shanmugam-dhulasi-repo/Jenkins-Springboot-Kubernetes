FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/jenkins-springboot-kubernetes-1.0.jar $PROJECT_HOME/jenkins-springboot-kubernetes.jar

WORKDIR $PROJECT_HOME
EXPOSE 8080
CMD ["java" ,"-jar","./jenkins-springboot-kubernetes.jar"]
