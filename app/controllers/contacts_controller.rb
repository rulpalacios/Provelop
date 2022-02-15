class ContactsController < ApplicationController
  def create
    ContactMailer.with(
      email: params[:email],
      name: params[:name],
      message: params[:message]
    ).contact_email.deliver_later

    redirect_to root_path, notice: 'Correo enviado, pronto nos pondremos en contacto.'
  end
end
