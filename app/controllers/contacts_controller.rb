class ContactsController < ApplicationController
  def create
    ContactMailer.contact_email(
      email: params[:email],
      name: params[:name],
      message: params[:message]
    ).deliver_later

    redirect_to root_path, notice: 'Correo enviado, pronto nos pondremos en contacto.'
  end
end
