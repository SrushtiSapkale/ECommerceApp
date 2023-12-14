FROM node:14

WORKDIR /ECommerceApp/
COPY ./ .

WORKDIR /ECommerceApp/client
COPY ./client/package*.json ./
RUN npm install

WORKDIR /ECommerceApp/
COPY /package*.json ./
RUN npm install
EXPOSE 3000
RUN npm run dev
# Runtime App

