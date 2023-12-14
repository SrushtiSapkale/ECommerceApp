FROM node:14

WORKDIR /ECommerceApp/
COPY ./ .

WORKDIR /ECommerceApp/client
COPY ./client/package*.json ./
RUN npm install

WORKDIR /ECommerceApp/
COPY /package*.json ./
RUN npm install
EXPOSE 8080
RUN npm run dev
# Runtime App

