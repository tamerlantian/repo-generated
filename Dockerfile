FROM node:18

RUN mkdir -p /home/app

WORKDIR /home/app

COPY package*.json .

RUN npm install --silent

COPY . .

CMD ["npm", "run", "dev"]