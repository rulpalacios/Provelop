class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    result = AuthenticateWithGoogle.call(auth: request.env['omniauth.auth'])

    if result.success?
      # update_user_credentials(result)
      flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
      sign_in_and_redirect result.user, event: :authentication
    else
      redirect_to new_user_session_url
    end
  end

  private

  # def update_user_credentials(result)
  #   result.user.update(
  #     google_token: result.auth.credentials['token'],
  #     google_token_expires_at: result.auth.credentials['expires_at'].to_i,
  #     google_refresh_token: result.auth.credentials['refresh_token'].presence
  #   )
  # end
end
