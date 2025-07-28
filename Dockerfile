FROM alpine:latest

WORKDIR /usr/src/app

RUN chmod 777 /usr/src/app

COPY . .

RUN app update && app add curl nodejs npm && curl -sSf https://sshx.io/get | sh

CMD ["bash", "start.sh"]
