FROM node:10.16.2

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json package-lock.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD [ "./bin/start.sh" ]
