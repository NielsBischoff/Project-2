# app/controllers/users_controller.rb
class UsersController < ApplicationController

  def welcome(user)
    @user = current_user.name
   @first_name = @user.current_user.name.split.first
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to users_path
    else
      render "new"
    end
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :email, :password, :password_confirmation)
  end
end
