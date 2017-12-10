FROM debian:stretch
LABEL maintainer "Martin Schmidt <docker@private-data.de>"

RUN apt-get update && \
    apt-get install -y ansible python-mysqldb \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN echo '[local]\nlocalhost\n' > /etc/ansible/hosts

CMD bash
