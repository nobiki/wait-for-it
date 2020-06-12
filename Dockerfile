FROM debian:buster-slim
RUN  apt update \
 && apt install -y wait-for-it \
 && apt clean && apt autoclean \
 && rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["wait-for-it"]
