FROM node:14.4.0-alpine

ARG WORKDIR
ARG CONTAINER_PORT

ENV HOME=/${WORKDIR} \
    LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    HOST=0.0.0.0

WORKDIR ${HOME}

# 本番環境で実行
# COPY package*.json ./

# RUN yarn install

# COPY . .

# RUN yarn run build

EXPOSE ${CONTAINER_PORT}

# CMD ["yarn", "run", "start"]