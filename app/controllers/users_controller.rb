# frozen_string_literal: true

class UsersController < ApplicationController
  # skip_after_action :verify_authorized
  layout 'auth', only: :new

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      warden.set_user(@user)
      redirect_to root_url, notice: "Welcome #{@user.email}"
    else
      render :new, alert: "Unable to create account"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: 'Profile was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def user_params
    params.require(:user).permit(
      :name, :about, :country, :email, :password, :password_confirmation, :role, :specialization, :years_of_experience, 
      jobs_attributes: [:_destroy, :id, :title, :organization, :dates, :description],
      studies_attributes: [:_destroy, :id, :title, :institution, :dates, :description]
    )
  end
end
