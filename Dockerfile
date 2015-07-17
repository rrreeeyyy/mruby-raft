FROM ubuntu:14.04
MAINTAINER Yoshikawa Ryota <yoshikawa@rrreeyyy.com>

RUN apt-get update -y && apt-get install -y \
      gcc \
      make \
      git \
      rake \
      bison \
      curl \
      automake \
      autoconf \
      libtool \
      && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/mruby/mruby.git /usr/local/mruby
WORKDIR /usr/local/mruby
ADD build_config.rb /tmp/build_config.rb
RUN mkdir /tmp/mruby-raft
ADD mrbgem.rake /tmp/mruby-raft/mrbgem.rake
ADD mrblib /tmp/mruby-raft/mrblib

RUN MRUBY_CONFIG=/tmp/build_config.rb rake

ENTRYPOINT ["/usr/local/mruby/bin/mirb"]
