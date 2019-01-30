FROM golang:1.11
RUN mkdir -p $GOPATH/src/github.com/deislabs/ /output
COPY entrypoint /root/
RUN chmod 755 /root/entrypoint
WORKDIR $GOPATH/src/github.com/deislabs/
ENTRYPOINT /root/entrypoint