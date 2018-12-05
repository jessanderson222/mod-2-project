class SessionsController < ApplicationController
  def new

  end
  def create
    # byebug
    if params[:session][:user_name].empty? || params[:session][:password].empty?
      flash[:errors] = "Username / Password cannot be blank!!!"
      redirect_to login_path
    else
      @user = User.find_by(user_name: params[:session][:user_name])
      if @user && @user.authenticate(params[:session][:password])
        session[:user_id] = @user.id
        redirect_to @user
      end
    end
  end
  def destroy
    session.delete :user_id
    redirect_to root_path
  end
end
