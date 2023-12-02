FROM golang:1.8

WORKDIR /usr/src/app

COPY hello-world.go .
RUN go build -o hello-world .

CMD ./hello-world
