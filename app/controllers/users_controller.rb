# frozen_string_literal: true

class UsersController < ApplicationController
  # skip_after_action :verify_authorized

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_attributes)

    if @user.save
      warden.set_user(@user)
      redirect_to root_url, notice: "Welcome #{@user.email}"
    else
      render :new, alert: "Unable to create account"
    end
  end

  def user_attributes
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
