FROM oven/bun:latest

WORKDIR /app

COPY package.json .

RUN bun install

RUN bun i -g serve

COPY . .

RUN bun run build

EXPOSE 3000

CMD [ "serve", "-s", "dist" ]
