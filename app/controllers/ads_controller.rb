class AdsController < ApplicationController
  before_action :find_ad, only: :show
  def show

  end

  private
  def find_ad
    @ad = Ad.find(params[:id])
  end
end
