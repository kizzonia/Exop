if Rails.env.production?

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :user_name            => ENV['SENDGRID_USERNAME'],
  :password             => ENV['SENDGRID_PASSWORD'],
  :address              => "smtp.sendgrid.net",
  :port                 => 587,
  :enable_starttls_auto => true,
  :authentication       => :plain,
  :domain               => "heroku.com"
}

end
