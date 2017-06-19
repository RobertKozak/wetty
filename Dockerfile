FROM node:latest
MAINTAINER Robert Kozak <rkozak@gmail.com>

ADD . /app
WORKDIR /app
RUN useradd -d /home/plex -m -s /bin/bash plex && cat .pass | chpasswd && npm install

EXPOSE 3000

ENTRYPOINT ["node"]
CMD ["app.js", "-p", "3000"]
