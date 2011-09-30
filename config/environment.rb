# Load the rails application
require File.expand_path('../application', __FILE__)
require 'csv'
require 'csv_import'
require 'csv_importing_job'

# Initialize the rails application
Bigblockdeals::Application.initialize!

Time::DATE_FORMATS[:good_reads_title] = "%m/%d/%y"
Time::DATE_FORMATS[:good_reads_article] = "%b %e, %Y"

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :enable_starttls_auto => true,
  :address => 'smtp.gmail.com',
  :port => 587,
  :authentication => :login,
  :domain => 'bigblockdeals.com',
  :user_name => 'info@bigblockdeals.com',
  :password => 'password123'
}
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
