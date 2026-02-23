FROM node:20-slim

WORKDIR /app

# Copy dependency files first (layer caching)
COPY package*.json ./

RUN npm install

# Copy source code
COPY . .

# Build React app
RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
