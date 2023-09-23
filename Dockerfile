ARG GO_VER="1.21"
FROM golang:${GO_VER}
ENV LANG=pl_PL.UTF-8 \
    LC_ALL=pl_PL.UTF-8 \
    GOOS=linux \
    GOARCH=amd64 \
    TZ='Europe/Warsaw'

WORKDIR /opt/app
RUN go install github.com/practical-coder/target@latest
RUN target get --repo 'dominikh/go-tools' --pattern='linux_amd64'
RUN tar zxvf staticcheck_linux_amd64.tar.gz
RUN mv staticcheck/staticcheck /usr/bin/