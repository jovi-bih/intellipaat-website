FROM ubuntu
RUN apt update
RUN apt install apache2 -y
#RUN apt install git -y
#RUN rm -f /var/www/html/index.html
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
