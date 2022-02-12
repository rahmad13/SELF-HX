FROM node:16.6.1-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .
RUN npm install -g npm@8.3.0
RUN npm install i

COPY . .

EXPOSE 5000

CMD ["node main.js"]
