FROM node:20 AS frontend-builder

COPY ./frontend /app

WORKDIR /app

RUN npm install

RUN npm run build

# Build backend

FROM node:20

COPY ./backend /app

WORKDIR /app

RUN npm install

COPY --from=frontend-builder /app/dist /app/public

CMD ["node", "server.js"]

