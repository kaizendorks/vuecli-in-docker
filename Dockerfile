FROM node:13-alpine

LABEL maintainer="https://github.com/kaizendorks"

RUN npm install -g @vue/cli@^4.0.0 \
    && vue --version

WORKDIR /src

CMD ["vue"]
