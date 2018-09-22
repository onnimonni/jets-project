# Image for running local development environment with Jets
FROM ruby:2-stretch

# Install nodejs in order to use webpacker bundled in Jets
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
		apt-get install -y nodejs

# Webpacker needs yarn too
RUN npm install -g yarn

RUN gem install bundler rake jets

WORKDIR /app