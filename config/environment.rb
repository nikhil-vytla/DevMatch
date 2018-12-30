# Load the Rails application.
require_relative 'application'

# Check out https://devcenter.heroku.com/articles/mailgun for more information on Mailgun.
ActionMailer::Base.smtp_settings = {
  :port           => ENV['MAILGUN_SMTP_PORT'],
  :address        => ENV['MAILGUN_SMTP_SERVER'],
  :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
  :password       => ENV['MAILGUN_SMTP_PASSWORD'],
  :domain         => 'gentle-gorge-79360.herokuapp.com',
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp

# Initialize the Rails application.
Rails.application.initialize!
