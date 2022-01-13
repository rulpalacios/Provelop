module FeatureFlags
  def self.auth_enabled?
    Flipper.enabled?('auth')
  end

  def self.enable_auth
    Flipper['auth'].enable
  end

  def self.disable_auth
    Flipper['auth'].disable
  end
end