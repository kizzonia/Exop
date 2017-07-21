if Rails.env.production?
  config.action_mailer.perform_deliveries = true
  config.action_mailer.perform_deliveries = true
 config.action_mailer.default :charset => "utf-8"

  config.action_mailer.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :user_name => ENV['SENDGRID_USERNAME'],
    :password => ENV['SENDGRID_PASSWORD'],
    :domain => 'exop.herokuapp.com',
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
  }
end
