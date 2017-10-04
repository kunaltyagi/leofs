from ubuntu:16.04
RUN apt-get update \
 && apt-get install -y vim curl build-essential git libtool cmake check pkg-config \
 && apt-get install -y libssl-dev zlib1g-dev libcurl4-openssl-dev lsb-release\
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
RUN curl -sL --retry 3 "https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb" \
 -o /tmp/esl.deb \
 && dpkg -i /tmp/esl.deb \
 && apt-get update \
 && apt-get install -y esl-erlang=1:18.3.4 \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
ENV USER root
