# frozen_string_literal: true

class SendInviteWorker
  include Shoryuken::Worker

  shoryuken_options queue: "invites", auto_delete: true, body_parser: :json

  def perform(sqs_message, body)
    Rails.logger.debug(sqs_message.inspect)
    Rails.logger.debug(body.inspect)
    Rails.logger.debug("we are now in the worker")
    Rails.logger.debug("we are not leaving the worker")
  end
end
