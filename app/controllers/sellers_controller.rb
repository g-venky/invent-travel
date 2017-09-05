class SellersController < ApplicationController::Base
  def index 
  end
  def promotions
    @seller = Seller.find(params[:id])
    @promotions = @seller.promotions
  end
end
