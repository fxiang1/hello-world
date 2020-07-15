from registry.access.redhat.com/ubi8/nodejs-12:1

RUN mkdir -p /opt/app-root/src/hello-world
WORKDIR /opt/app-root/src/hello-world

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start"]
