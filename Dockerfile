from ubuntu:14.04
RUN apt-get update \
 && apt-get install -y curl build-essential git libtool cmake check \
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
