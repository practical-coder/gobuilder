ARG GO_VER="1.21"
FROM golang:${GO_VER}
ENV LANG=pl_PL.UTF-8 \
    LC_ALL=pl_PL.UTF-8 \
    GOOS=linux \
    GOARCH=amd64 \
    TZ='Europe/Warsaw'

WORKDIR /opt/app
COPY getstaticcheck.sh ./
SHELL ["/usr/bin/bash", "-c"]
RUN ./getstaticcheck.sh
RUN cp staticcheck/staticcheck /usr/bin/