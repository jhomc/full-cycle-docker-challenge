FROM golang:alpine AS builder

RUN apk update && apk add --no-cache git

WORKDIR $GOPATH/src/mypackage/myapp/

COPY . .

RUN go build -o /go/bin/hello

EXPOSE 8080

ENTRYPOINT ["/go/bin/hello"]