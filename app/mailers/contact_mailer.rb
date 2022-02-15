class ContactMailer < MandrillMailer::TemplateMailer
  default from: 'raul@provelop.mx'

  def contact_email
    mandrill_mail(
      template: 'contact',
      subject: 'Correo de contacto desde: provelop.mx',
      to: 'raul@provelop.mx',
      vars: {
        EMAIL: params[:email],
        NAME: params[:name],
        MESSAGE: params[:message]
      },
      important: true,
      inline_css: true
     )
  end

end
