# Vue CLI Docker Image

> Docker image for running the Vue CLI

[![Build Status](https://travis-ci.org/kaizendorks/vuecli-in-docker.svg?branch=master)](https://travis-ci.org/kaizendorks/vuecli-in-docker)

## Usage

In order to use this image simply map your host workdir to src and use the Vue CLI as normal.

[Vue Cli Docs: https://cli.vuejs.org/](https://cli.vuejs.org/)

1. Pull image: `docker pull kaizendorks/vue`
1. Print help: `docker run --rm kaizendorks/vue`
1. Create a new Vue app:

       # Start a new container and map the current directory to src:
       docker run --rm -it \
         -v "$(pwd)":/src \
       kaizendorks/vue sh

       # Once the container starts you can run any vue cli commands:
       /src $ vue create myapp

1. The changes made inside the container's /src folder will also persist on your hhost machine.

## Contributing

1. Build image: `docker build -t vue .`
1. Edit smoke tests:

       docker run --rm -it \
         -v "$(pwd)":/src \
         -v /var/run/docker.sock:/var/run/docker.sock \
       iorubs/dgoss edit vue sleep 1d

1. Run smoke tests:

       docker run --rm -it \
         -v "$(pwd)":/src \
         -v /var/run/docker.sock:/var/run/docker.sock \
       iorubs/dgoss run vue sleep 1d
