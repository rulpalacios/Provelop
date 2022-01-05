class SessionsController < ApplicationController
  # skip_after_action :verify_authorized
  layout 'auth'

  def new
    flash.now.alert = warden.message if warden.message.present?
  end

  def create
    authenticated = warden.authenticate!
    
    if authenticated
      redirect_to root_path, notice: "Bienvenido #{current_user.email}!"
    else
      render :new
    end
  end

  def destroy
    warden.logout
    redirect_to root_url
  end
end
