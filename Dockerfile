FROM node:20-alpine

WORKDIR /app

# 项目零依赖，直接拷贝源码即可，无需 npm install
COPY . .

ENV NODE_ENV=production
ENV PORT=3000

EXPOSE 3000

USER node

CMD ["node", "server/server.js"]
