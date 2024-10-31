FROM node:22.5-slim
WORKDIR /next-front

COPY . .
WORKDIR /next-front/front
RUN npm install
RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*
EXPOSE 3000
CMD ["npm", "run", "dev"]
