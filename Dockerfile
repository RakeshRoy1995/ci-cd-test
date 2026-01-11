# ---- Build stage ----
FROM node:20-alpine AS builder

WORKDIR /app

COPY package*.json ./
RUN npm install --production=false

COPY . .
RUN npm test

# ---- Runtime stage ----
FROM node:20-alpine

WORKDIR /app

COPY --from=builder /app ./

CMD ["npm", "start"]
