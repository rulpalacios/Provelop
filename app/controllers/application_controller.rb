# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit
  
  helper_method :current_path

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def current_path
    request.path
  end

  def user_not_authorized
    redirect_to :root, alert: 'Parece que no estas autorizado para esa acción'
  end
end
