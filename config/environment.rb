# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
RailsStripeMembershipSaas::Application.initialize!

#SendGrid Mailer
ActionMailer::Base.smtp_settings = {
  address: "smtp.sendgrid.net",
    port: 587,
    domain: "heroku.com",
    authentication: "plain",
    enable_starttls_auto: true,
    user_name: ENV["SENDGRID_USERNAME"],
    password: ENV["SENDGRID_PASSWORD"]
  }