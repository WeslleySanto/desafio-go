FROM golang:1.8 as builder

WORKDIR /usr/src/app

COPY hello-world.go .
RUN go build -o hello-world .

FROM scratch
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app .
CMD ["./hello-world"]