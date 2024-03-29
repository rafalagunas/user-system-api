FROM node:18
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install -g nodemon
RUN npm ci
COPY . .
EXPOSE 8080
CMD ["npm", "start"]
