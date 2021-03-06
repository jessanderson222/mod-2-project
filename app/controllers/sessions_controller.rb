class SessionsController < ApplicationController
  def new
    @categories = Category.all
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
      else
        flash[:errors] = "Username/Password do not match"
        redirect_to login_path
      end
    end
  end
  def destroy
    session.delete :user_id
    redirect_to root_path
  end
end
