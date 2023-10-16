# frozen_string_literal: true

require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App
  class Application < Rails::Application
    config.load_defaults(7.1)

    config.autoload_lib(ignore: ["assets", "tasks"])

    config.api_only = true

    config.active_job.queue_adapter = :shoryuken
  end
end
