class SessionsController < ApplicationController
  # skip_after_action :verify_authorized
  layout 'auth'

  def new
    flash.now.alert = warden_options[:message] if warden_options
  end

  def create
    warden.authenticate!
    redirect_to root_path, notice: "Bienvenido #{current_user.email}!"
  end

  def destroy
    warden.logout
    redirect_to root_url
  end
end
