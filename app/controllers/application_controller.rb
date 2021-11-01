# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :signed_in?

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
end
