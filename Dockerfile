# docker build -t ruby-2.1.5
# docker run -it ruby-2.1.5

FROM ubuntu:14.04

MAINTAINER Joseph Yi, jyi@spokeo.com

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y libssl-dev
RUN apt-get install -y git-core
RUN apt-get install -y curl
RUN apt-get clean

# Install ruby-build
WORKDIR /tmp/ruby-build
RUN git clone https://github.com/sstephenson/ruby-build.git .

# Change version number to invalidate ruby-build cache
RUN git checkout v20141113 
RUN ./install.sh 

# Install Ruby 2.1.5
RUN ruby-build 2.1.5 /usr/local

WORKDIR /home

COPY . .

RUN gem install bundler -v 1.5.0

RUN gem install rails-observers -v '0.1.2'

RUN bundle install

ENTRYPOINT bash
