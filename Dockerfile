FROM alpine:3 AS finally

LABEL maintainer="akkuman@foxmail.com"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.sjtug.sjtu.edu.cn/g' /etc/apk/repositories && \
    apk --no-cache add firefox nginx-mod-http-lua s6-overlay

COPY rootfs /
COPY ./default.conf /etc/nginx/http.d/default.conf

EXPOSE 80

ENTRYPOINT ["/init"]
