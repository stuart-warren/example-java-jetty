
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

## Testing supervisord with supervisor-stdout
##
# RUN apt-get -y install python-pip
# RUN pip install supervisor supervisor-stdout
# COPY ./contrib/eventlistener_stdout.conf /etc/supervisor/conf.d/eventlistener_stdout.conf
# COPY ./contrib/supervisord_app.conf.erb /tmp/supervisord_app.conf.erb
# RUN adduser app && mkdir /var/log/app
# RUN foreman export supervisord /etc/supervisor/conf.d/ -d / -t /tmp/supervisord_app.conf.erb
# CMD ["-n","-c","/etc/supervisor/supervisord.conf"]
# ENTRYPOINT ["/usr/bin/supervisord"]
