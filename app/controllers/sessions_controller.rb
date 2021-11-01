class SessionsController < ApplicationController
  # skip_after_action :verify_authorized

  def new
    flash.now.alert = warden.message if warden.message.present?
  end

  def create
    warden.authenticate!
    redirect_to root_path, notice: "Signed in successfully!"
  end

  def destroy
    warden.logout
    redirect_to root_url
  end
end
