class Promotions::LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_promotion

  def create
    @promotion.likes.where(user_id: current_user.id).create

    respond_to do |format|
      format.html { redirect_to @promotion }
      format.js
    end
  end

  def destroy
    @promotion.likes.where(user_id: current_user.id).destroy_all

    respond_to do |format|
      format.html { redirect_to @promotion }
      format.js
    end
  end

  private

    def set_promotion
      @promotion = Promotion.find(params[:promotion_id])
    end
end