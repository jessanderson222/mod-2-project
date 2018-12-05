class CategoriesController < ApplicationController
  before_action :find_category, only: :show
  def index
    @categories = Category.all
    @user = User.find(session[:user_id])
  end

  def show

  end

  private
  def find_category
    @category = Category.find(params[:id])
  end

end
