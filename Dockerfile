FROM alpine:latest

RUN apk update \
    && apk --no-cache add git python3 \
    && git clone https://github.com/craigarms/openufp-test.git \
    && apk del git \
    && rm -rf /var/cache/apk/*


ENTRYPOINT ["python3"]
CMD ["/openufp-test/openufp-test.py"]
