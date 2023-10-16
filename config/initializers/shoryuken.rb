# frozen_string_literal: true

Shoryuken.sqs_client = Aws::SQS::Client.new(
  region: ENV.fetch("AWS_REGION"),
  credentials: Aws::Credentials.new(ENV.fetch("AWS_ACCESS_KEY_ID"), ENV.fetch("AWS_SECRET_ACCESS_KEY")),
  endpoint: "http://localstack:4566",
)
