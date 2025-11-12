# Use node slim
FROM node:18-slim

WORKDIR /app

COPY package*.json ./
RUN npm ci --production

COPY . .

ENV PORT=3000
EXPOSE 3000

CMD ["npm", "start"]
