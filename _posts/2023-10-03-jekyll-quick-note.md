---
layout: post
title: Github Pages and Jekyll quick note
date: 2023-10-03 08:00:00 +0800
categories: note
---
-  Dockerfile and Build script

```dockerfile
# Ruby + Jekyll + Github-Pages at 20231003
FROM ruby:latest
WORKDIR /srv/jekyll
RUN gem install jekyll:3.9.3 bundler webrick minima:2.5.1 github-pages
EXPOSE 4000/tcp
ENTRYPOINT ["/usr/local/bundle/bin/jekyll","serve","--host=0.0.0.0"]
```

```bash
docker pull ruby:latest
docker images ruby:latest | tr -s ' ' | grep ruby | cut -f3 -d" " > .ruby-docker-id
docker build --tag localdev-github-pages:latest .
```

- (optional) create a new Jekyll site

```bash
docker run -it --entrypoint=/bin/bash --volume="$PWD:/srv/jekyll" localdev-github-pages -i
jekyll new --skip-bundle .
```

- run Jekyll serve for Dev (or run `./run_local.sh`)

```bash
docker run -it --volume="$PWD:/srv/jekyll" -p 4000:4000 localdev-github-pages
```

You can start to edit file to test the output.
Open http://localhost:4000 to get the result.
Ctrl + C to end.

- Make clean and push to Github Pages

```bash
./clean_env.sh
git add *
git commit -m 'this is a update commit.'
git push
```