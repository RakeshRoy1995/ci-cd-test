FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

ARG NODE_ENV=production
RUN npm ci --omit=dev

COPY . .

CMD ["node", "index.js"]
