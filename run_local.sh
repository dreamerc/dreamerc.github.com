# gem install jekyll:3.9.3 bundler webrick minima:2.5.1
docker run -it --volume="$PWD:/srv/jekyll" -p 4000:4000 ruby /bin/bash;
