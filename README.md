# rabbitmq-consumer-cli

Extracted from https://github.com/streadway/amqp/blob/v1.0.0/_examples/simple-consumer/consumer.go

## Usage

```
rabbitmq-consumer-cli -lifetime 1m -queue events -uri $AMQP_URL -durable=false -exchange direct
```
