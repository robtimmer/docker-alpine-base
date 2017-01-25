# Build from alpine image, tag 3.4
FROM alpine:3.4

# Set maintainer info
MAINTAINER Rob Timmer <rob@robtimmer.com>

# Install basic packages
RUN apk add --update bash \
                     openssl \
                     curl \
                     fping

# Clear cache
RUN rm -rf /var/cache/apk/* && mkdir /opt 
