FROM debian:stable
MAINTAINER Roman Kozin

RUN apt-get update \
    && apt-get -y --yes install procps apt-utils vim nginx \
    && apt-get clean

ADD files/conf/vhosts.conf /etc/nginx/sites-available/vhosts.conf
ADD files/conf/secret /etc/nginx/
RUN rm /etc/nginx/sites-enabled/default
RUN ln -s /etc/nginx/sites-available/vhosts.conf /etc/nginx/sites-enabled/vhosts.conf

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
