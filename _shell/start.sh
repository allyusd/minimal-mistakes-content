#!/bin/bash

docker run -e "JEKYLL_ENV=production" --name jekyll --rm -p 4000:4000 -v ~/github/jekyll:/home/ubuntu/jekyll -u $(id -u):$(id -g) allyusd/ubuntu-jekyll bundle exec jekyll serve --config _config.yml,_config_dev.yml --host=0.0.0.0 --drafts
