class ContactMailer < MandrillMailer::TemplateMailer
  default from: 'hola@provelop.mx'

  def contact_email(email, name, message)
    mandrill_mail(
      template: 'contact',
      subject: 'Correo de contacto desde: provelop.mx',
      to: 'andres@provelop.mx',
      vars: {
        EMAIL: email,
        NAME: name,
        MESSAGE: message
      },
      important: true,
      inline_css: true
     )
  end
end
