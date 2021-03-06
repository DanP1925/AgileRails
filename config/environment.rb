# frozen_string_literal: true

# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Depot::Application.configure do
  config.action_mailer.delivery_method = :test
  config.action_mailer.smtp_settings = {
    address: 'smtp.gmail.com',
    port: 587,
    domain: 'domain.of.sender.net',
    authentication: 'plain',
    user_name: ENV['EMAIL_USER'],
    password: ENV['EMAIL_PWD'],
    enable_starttls_auto: true
  }
end
