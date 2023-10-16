# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.2.2"

gem "rails", "~> 7.1.0"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "tzinfo-data", platforms: [:windows, :jruby]
gem "bootsnap", require: false
gem "rubocop-shopify", require: false
gem "rubocop-rails", require: false
gem "rubocop-rspec", require: false
gem "brakeman"
gem "aws-sdk-sqs", "~> 1.64"
gem "shoryuken"

group :development, :test do
  gem "debug", platforms: [:mri, :windows]
  gem "rspec-rails", "~> 6.0", ">= 6.0.3"
end

group :development do
  gem "ruby-lsp", "~> 0.11.2"
  gem "ruby-lsp-rails", "~> 0.2.6"
end
