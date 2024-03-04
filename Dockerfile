FROM ubuntu:18.04
RUN apt update
RUN apt install default-jdk -y
CMD ["ll"]
RUN apt install nginx -y
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
