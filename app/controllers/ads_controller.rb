class AdsController < ApplicationController
  before_action :find_ad, only: :show

  def new
    @ad = Ad.new
    @categories = Category.all

  end

  def create
    @user = User.find(session[:user_id])
    @ad = Ad.new(ads_params)
    @ad.renter = @user
    @ad.save
    redirect_to @ad
  end

  def show
    @comment = Comment.new
  end
  def search
    # byebug
    @ads = Ad.where("name LIKE ?", "%#{params[:q]}%")
  end

  private
  def find_ad
    @ad = Ad.find(params[:id])
  end

  def ads_params
    params.require(:ad).permit(:category_id, :item_description, :image_path, :name)
  end
end
