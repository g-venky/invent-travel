class SellersController < ApplicationController::Base
  def promotions
    @seller = Seller.find(params[:id])
    @promotions = @seller.promotions
  end
end
