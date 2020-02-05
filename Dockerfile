FROM node:12.14.1-alpine

RUN mkdir -p /app

WORKDIR /app

COPY package*.json /app/

RUN npm install -g @angular/cli

RUN npm install 

COPY . /app/

# RUN npm run build

EXPOSE 4200

CMD ["ng", "serve"]
