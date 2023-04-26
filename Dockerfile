FROM alpine:3 AS finally

LABEL maintainer="akkuman@foxmail.com"

RUN apk --no-cache add firefox nginx-mod-http-lua s6-overlay curl

COPY rootfs /
COPY ./default.conf /etc/nginx/http.d/default.conf

EXPOSE 80

ENTRYPOINT ["/init"]
