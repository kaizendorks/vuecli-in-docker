FROM node:11-alpine

LABEL maintainer="https://github.com/kaizendorks"

RUN npm install -g @vue/cli@^3.0.0 \
    && vue --version

USER node
WORKDIR /src

CMD ["vue"]