FROM alpine:3.6

ENTRYPOINT ["/usr/bin/aws"]

RUN apk update && apk add \ 
      bash \
      curl \
      less \
      groff \
      jq \
      python \
      py-pip \
      py2-pip && \
      pip install --upgrade pip awscli s3cmd && \
      mkdir /root/.aws
