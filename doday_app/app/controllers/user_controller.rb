# app/controllers/users_controller.rb
class usersController < ApplicationController
  def index
    @user = user.all
  end

  def new
    @user = user.new
  end

  def create
    @user = user.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
