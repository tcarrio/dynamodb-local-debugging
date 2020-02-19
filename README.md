# dynamodb-local-debugging

This project is simply an extension of the default [Amazon DynamoDB Local docker image](https://hub.docker.com/r/amazon/dynamodb-local). With this, you can start the local DynamoDB instance up with debug logging enabled. That's about the only change.

Not that I would ever suggest using local DynamoDB for production usage ever, especially with debug logging enabled, for the love of God **just don't**.

Get started with `docker pull tcarrio/dynamodb-local-debugging`.

Thanks to [@chaixxiv](https://stackoverflow.com/users/7250072/chaixxiv) for [their answer](https://stackoverflow.com/questions/29525469/how-do-i-enable-dynamodb-local-logging) on StackOverflow to provide some direction on this.

