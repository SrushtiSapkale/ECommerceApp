FROM node:14

WORKDIR /ECommerceApp/
COPY ./ .

WORKDIR /ECommerceApp/client
COPY ./client/package*.json ./
RUN npm install

WORKDIR /ECommerceApp/
COPY /package*.json ./
RUN npm install


# Runtime App
CMD npm run dev