docker pull ruby:latest
docker images ruby:latest | tr -s ' ' | grep ruby | cut -f3 -d" " > .ruby-docker-id
docker build --tag localdev-github-pages:latest .
