FROM debian:stable-slim
MAINTAINER m0wer <m0wer@autistici.org>

RUN apt update && apt install anki -y && rm -rf /var/lib/apt/lists/*

RUN useradd -m anki
USER anki

CMD ["/usr/local/bin/anki"]