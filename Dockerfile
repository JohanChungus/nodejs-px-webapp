FROM node:latest

WORKDIR /home/choreouser
COPY / /home/choreouser/

RUN apt update && apt upgrade -y
RUN npm i -g @3kmfi6hp/nodejs-proxy
RUN npm i ws express basic-auth
COPY . .

EXPOSE 80

CMD ["nodejs-proxy"]
USER 10001
