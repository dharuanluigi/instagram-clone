FROM debian
LABEL maintainer "@dharuanluigi"

RUN useradd www && \
    mkdir /log && \
    mkdir /app &&\
    chown www /log

USER www
WORKDIR /log
VOLUME /app
EXPOSE 8000

ENTRYPOINT ["/usr/share/nginx/html/"]
CMD ["index.html"]