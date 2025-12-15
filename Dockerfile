FROM ruby:alpine

RUN gem install awesome_bot --no-format-exec

RUN addgroup -g 1000 appuser && adduser -D -u 1000 -G appuser appuser

USER appuser

VOLUME /mnt

WORKDIR /mnt

ENTRYPOINT ["awesome_bot"]
CMD ["--help"]
