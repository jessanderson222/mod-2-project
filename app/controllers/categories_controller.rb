class CategoriesController < ApplicationController
  before_action :find_category, only: :show
  def index
    @categories = Category.all
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
      @user = nil
    end
  end

  def show
    @categories = Category.all
  end

  private
  def find_category
    @category = Category.find(params[:id])
  end

end
