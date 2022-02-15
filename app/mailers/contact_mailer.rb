class ContactMailer < ApplicationMailer
  default from: 'raul@provelop.mx'

  def contact_email
    @email = params[:email]
    @name = params[:name]
    @message = params[:message]
    @url = 'http://example.com/login'
    mail(to: 'raul@provelop.mx', subject: 'Correo de contacto')
  end
end
