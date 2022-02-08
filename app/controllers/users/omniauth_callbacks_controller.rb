# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  def google_oauth2
    result = AuthenticateWithGoogle.call(auth: request.env['omniauth.auth'])

    if result.success?
      flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
      sign_in_and_redirect result.user, event: :authentication
    else
      redirect_to new_user_session_url
    end
  end
end
