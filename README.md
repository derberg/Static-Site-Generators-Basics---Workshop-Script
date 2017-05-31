## Intro

First get some theory https://derberg.github.io/staticsitegenerators_gamechangers/:
* What Static Site Generators are?
* What generators are available?
* Who is using them on production?
* How they relate to DITA?
* Why should I bother?

## Set up environment

Static site generators are written in many different programming languages, based on different platforms. To explore the world of different technologies, better avoid the complicated set up of each of those. There is one common technology that makes it easier to kick off with world of static site generators, it is [Docker](https://www.docker.com).

Install Docker and enjoy the world of virtual containers:
- Windows: https://www.docker.com/docker-windows
- Mac: https://www.docker.com/docker-mac

## Quick start with Docker

Below you can see how to quickly run a container with node.js and git technology:
* Mac: `docker run -it --name myFirstContainer -v ~/myFirstContainer:/mySample -p 9778:9778 node:7.10 /bin/bash`
* Windows: `docker run -it --name myFirstContainer -v //C/Users/YourUser/myFirstContainer:/mySample -p 9778:9778 node:7.10 /bin/bash`

You are not interested with JavaScript based static site generator like DocPad? you want [Jekyll](https://jekyllrb.com/) based on Ruby or [JBake](jbake.org) on Java (Java? rly?) then just go to [Docker Hub](https://hub.docker.com) and find a different base image for you, like `maven:alpine` for Java 8 with Maven on it.

```
Docker flags explanation:
- it: Interactive mode, makes it possible to access container through the terminal
- name: Setting container name
- v: Mounting of local dir into a container.
- p: Port that you can access your container through the network
- node part is the name of the docker image and its tag
- `/bin/bash` is required by interactive mode
```

## Pick the Static Site Generator

Pick any, play with as many as you want. It all depends on what you need, what are your requirements.
To narrow the list of generators from over 400 to less than 10, use the following project: https://github.com/derberg/docs-with-static-site-generators

### DocPad samples

The most basic sample, a blog web site: `git clone https://github.com/derberg/blog-docpad-learn`
The documentation portal skeleton: `git clone https://github.com/YaaS/docpad-skeleton-apidocs`

After cloning the sample to your container, install DocPad globally by calling `npm install docpad -g`

### Reuse Docker container

Once you `exit` container this is how you start it up in interactive mode:
```
docker start myFirstContainer
docker exec -it myFirstContainer /bin/bash
```

### Use some features

* Play with [partials](https://github.com/docpad/docpad-plugin-partials) to do content reuse
* Play with [related](https://github.com/docpad/docpad-plugin-related) to do some content mapping or just learn how collections work and how to reuse it with templating
* Understand what metadata is for
* Information typing through metadata
* Specialization of anything

### Use GitHub Pages

Configure git in container:
```
git config --global user.email "derberg@wp.pl"
git config --global user.name "Lukasz Gornicki"
```

Then play with https://github.com/docpad/docpad-plugin-ghpages.

## Summary

* You feel it's to much?
* Terminal operations scare you off
* You think `I'm too old for this`

Cut this crap. It is never late for anything. Practice and you'll learn. And ask me for help whenever you need it.

## License

This workshop is available under [MIT license](LICENSE). This means you can reuse it however you want, on whatever conference/meetup/meeting you want.  

## Feedback/Requests

Please use [the Github issue tracker](../../issues) to give feedback/suggestions/requests on what could be done with this workshop to make it better and reusable.
