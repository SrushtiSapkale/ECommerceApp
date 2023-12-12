FROM node:14

WORKDIR /ECommerceApp/
COPY package*.json ./
RUN npm install

WORKDIR /ECommerceApp/client
COPY ./client/package*.josn ./
RUN npm install

# Runtime App
CMD npm run dev
