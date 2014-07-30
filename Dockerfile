
FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y install ruby openjdk-7-jdk
RUN gem install foreman

ADD ./Procfile /
ADD ./target /target

ENV POWERED_BY inside-docker

EXPOSE 5000
EXPOSE 5100

CMD ["start"]
ENTRYPOINT ["foreman"]
