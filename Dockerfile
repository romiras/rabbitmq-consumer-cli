FROM golang:1.17

ADD . /app
WORKDIR /app

ENV GOOS=linux
ENV GOARCH=amd64
ENV CGO_ENABLED=0

RUN go build -ldflags="-w -s" -o rabbitmq-consumer-cli


FROM alpine:latest
RUN apk --no-cache add ca-certificates tzdata
WORKDIR /app
COPY --from=0 /app/rabbitmq-consumer-cli /usr/local/bin/rabbitmq-consumer-cli

CMD ["./rabbitmq-consumer-cli"]
