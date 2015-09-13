from alpine
maintainer Mathias Kaufmann <me@stei.gr>
run apk update \
 && apk add ruby ruby-json ruby-rack ruby-mime-types ruby-io-console ca-certificates openssl \
 && gem install --no-ri --no-rdoc unirest addressable \
 && rm /var/cache/apk/*
volume /app
workdir /app
entrypoint ["rackup"]