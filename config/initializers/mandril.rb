ActionMailer::Base.smtp_settings = {
  address: 'smtp.mandrilapp.com',
  port: 587,
  enable_starttls_auto: true,
  user_name: 'contacto@provelop.mx',
  password: ENV['MANDRIL_API_KEY'],
  authentication: 'login'
}

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.default charset: 'utf-8'