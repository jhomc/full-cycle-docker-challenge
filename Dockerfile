FROM golang:alpine

RUN apk update && apk add --no-cache git

WORKDIR $GOPATH/src/mypackage/myapp/

COPY . .

RUN go build -o /go/bin/hello

ENTRYPOINT ["/go/bin/hello"]