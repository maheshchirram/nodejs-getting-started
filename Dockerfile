FROM node:18-alpine

WORKDIR /opt

COPY package.json package-lock.json ./
RUN npm ci --only=production

COPY . .

USER node
CMD ["npm", "start"]
EXPOSE 3000
