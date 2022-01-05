# frozen_string_literal: true

Rails.application.config.middleware.use Warden::Manager do |manager|
  manager.default_strategies :password
  manager.failure_app = ->(env) { HomeController.action(:index).call(env) }
end

Warden::Manager.serialize_into_session(&:id)

Warden::Manager.serialize_from_session do |id|
  User.find(id)
end

Warden::Strategies.add(:password) do
  def valid?
    params["email"] && params["password"]
  end

  def authenticate!
    user = User.find_by(email: params["email"])
    if user&.authenticate(params["password"])
      success! user
    else
      fail "Invalid email or password"
    end
  end
end

# Warden::Strategies.add(:omniauth) do
#   def valid?
#     request.env['omniauth.auth']
#   end
#
#   def authenticate!
#     user = User.from_oauth(request.env['omniauth.auth'])
#     fail('Invalid OAuth credentials') unless user.valid?
#
#     success! user
#   end
# end
