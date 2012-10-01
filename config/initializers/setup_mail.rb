ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "fidbacks.com",
  :user_name            => "support@fidbacks.com",
  :password             => "123Soleil",
  :authentication       => 'plain',
  :enable_starttls_auto => true
}

