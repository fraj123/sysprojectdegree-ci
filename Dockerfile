FROM jenkins/jenkins:jdk17-preview
USER root

RUN apt-get update -y
RUN apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common docker.io
RUN docker --version

RUN usermod -aG docker jenkins

USER jenkins
