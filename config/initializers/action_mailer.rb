Rails.application.config.action_mailer.smtp_settings = {
  :address              => "smtp.sendgrid.net",
  :port                 => 587,
  :domain               => "premiereapp.com",
  :user_name            => "app25483760@heroku.com",
  :password             => "nglep2dk",
  :authentication       => 'plain',
  :enable_starttls_auto => true
}

