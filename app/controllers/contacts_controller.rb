class ContactsController < ApplicationController
  def create
    ContactMailer.contact_email(
      params[:email],
      params[:name],
      params[:message]
    ).deliver_later

    redirect_to root_path, notice: 'Correo enviado, pronto nos pondremos en contacto.'
  end
end
