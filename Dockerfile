FROM ubuntu:18.04
RUN apt update
RUN apt install default-jdk -y
RUN mkdir /etc/makehtml/
ADD MakeHtml.java /etc/makehtml/
ADD template.html /etc/makehtml/
RUN cd /etc/makehtml/
CMD ["ll"]
RUN apt install nginx -y
EXPOSE 80
RUN rm -rf /var/www/html/*
RUN cp index.html /www/html/.
CMD ["nginx", "-g", "daemon off;"]