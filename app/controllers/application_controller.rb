# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit

  helper_method :current_user
  helper_method :signed_in?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def authenticate!
    return if signed_in?

    head :unauthorized
  end

  def current_user
    warden.user
  end

  def signed_in?
    warden.authenticated?
  end

  def warden
    request.env['warden']
  end

  def user_not_authorized
    redirect_to :root, alert: 'Parece que no estas autorizado para esa acción'    
  end
end
