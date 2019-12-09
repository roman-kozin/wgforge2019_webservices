FROM centos:centos7
MAINTAINER Roman Kozin

ENV BACKGROUND_COLOR='#c5c5c5'
ENV TEXT_COLOR='blue'

RUN yum install -y epel-release && yum install -y vim nginx

RUN rm -rf /usr/share/nginx/html/index.html
ADD files/start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["/start.sh"]
