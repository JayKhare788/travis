FROM golang:1.8.5-jessie
# create a working directory
WORKDIR /go/src/app
# add source code
ADD . src
# run main.go
WORKDIR /go/src/app/src
RUN CGO_ENABLED=0 go test -v
CMD ["go","run","main.go"]
