

class UsersController < ApplicationController
  before_action :find_user, only: :show

  def show

  end

  def new
    @user = User.new
  end

  def create
    # byebug
    @user = User.create(user_params)
    redirect_to @user
  end

private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:user_name, :email, :location, :password)
  end
end
