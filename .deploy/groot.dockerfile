FROM node:16.9.1

WORKDIR /app

RUN yarn global add pnpm

COPY ./apps/groot/edgelabs*.tgz ./

RUN tar zxvf ./edgelabs-groot-*.tgz 

WORKDIR /app/package

RUN pnpm install

CMD ["pnpm", "start"]