# Load the Rails application.
require_relative 'application'


ActionMailer::Base.smtp_settings = {
  :user_name => 'hheflerdevelopment@gmail.com',
  :password => 'Slyther.1n',
  :domain => 'yourdomain.com',
  :address => 'smtp.sendgrid.net',
  :port => 465,
  :authentication => :plain,
  :enable_starttls_auto => true
}

# Initialize the Rails application.
Rails.application.initialize!
