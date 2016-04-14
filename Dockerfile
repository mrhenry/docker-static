FROM ubuntu

RUN apt-get update -y && apt-get install -y curl

ENV USE_DNSDOCK=true
ADD /bin/* /bin/

EXPOSE 80/tcp
WORKDIR /app
ENTRYPOINT ["/bin/bash", "-c"]
