class ContactMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def contact_email
    @email = params[:email]
    @name = params[:name]
    @message = params[:message]
    @url = 'http://example.com/login'
    mail(to: @email, subject: 'Correo de contacto')
  end
end
