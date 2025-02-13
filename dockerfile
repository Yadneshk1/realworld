FROM node:14-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --production
COPY . .
RUN npm build
CMD ["npm", "start"]

