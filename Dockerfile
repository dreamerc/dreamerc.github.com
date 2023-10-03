# Ruby + Jekyll + Github-Pages at 20231003
FROM ruby:latest 
WORKDIR /srv/jekyll
RUN gem install jekyll:3.9.3 bundler webrick minima:2.5.1 github-pages
EXPOSE 4000/tcp
ENTRYPOINT ["/usr/local/bundle/bin/jekyll","serve","--host=0.0.0.0"]
