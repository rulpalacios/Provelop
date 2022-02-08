class AuthenticateWithGoogle
  include Interactor

  def call
    context.user = find_or_create_by_oauth
  end

  private

  def find_or_create_by_oauth
    user = User.find_by(email: info['email'])

    unless user.nil?
      attach_profile_picture(user) unless user.avatar.attached?
      update_prorifle_info(user) if user.name.blank?

      return user
    end

    user = User.create(
      email: info['email'],
      name: info['first_name'],
      password: Devise.friendly_token[0, 20]
    )
    attach_profile_picture(user)

    user
  end

  def info
    context.auth.info
  end

  def credentials
    context.auth.credentials
  end

  def attach_profile_picture(user)
    # Should be safe cause url always come from Google
    image = URI.open(info.image) # rubocop:disable Security/Open
    user.avatar.attach(io: image,
                                filename: "temp.#{image.content_type_parse.first.split('/').last}",
                                content_type: image.content_type_parse.first)
  end

  def update_prorifle_info(user)
    user.update(
      name: info['first_name']
    )
  end
end
