class ContactsController < ApplicationController
  def create
    ContactMailer.with(
      email: params[:email],
      name: params[:name],
      message: params[:message]
    ).contact_email.deliver_later
  end
end
