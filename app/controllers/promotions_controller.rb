class PromotionsController < ApplicationController
  before_action :set_promotion, only: [:vote,:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:vote,:index]
  # GET /promotions
  # GET /promotions.json
  respond_to :js, :json, :html
  def index

      @promotions=Promotion.order(created_at: :desc)

 
end
  # GET /promotions/1
  # GET /promotions/1.json
  def show
   
  end

  # GET /promotions/new
  def new  
    if current_user.company.present?
      if current_user.company.stall.present?
        @promotion = current_user.company.stall.promotions.build
      else 
        redirect_to new_stall_path
      end
    else 
      redirect_to new_company_path
    end
  end

  # GET /promotions/1/edit
  def edit
  end

  # POST /promotions
  # POST /promotions.json
  def create
     
    @promotion = current_user.company.stall.promotions.build(promotion_params)

    respond_to do |format|
      if @promotion.save
        format.html { redirect_to @promotion, notice: 'Promotion was successfully created.' }
        format.json { render :show, status: :created, location: @promotion }
      else
        format.html { render :new }
        format.json { render json: @promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promotions/1
  # PATCH/PUT /promotions/1.json
  def update
    respond_to do |format|
      if @promotion.update(promotion_params)
        format.html { redirect_to @promotion, notice: 'Promotion was successfully updated.' }
        format.json { render :show, status: :ok, location: @promotion }
      else
        format.html { render :edit }
        format.json { render json: @promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promotions/1
  # DELETE /promotions/1.json
  def destroy
    @promotion.destroy
    respond_to do |format|
      format.html { redirect_to promotions_url, notice: 'Promotion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
      def upvote
    @promotion = Promotion.find(params[:id])
    @promotion.upvote_by current_user
    redirect_back fallback_location: root_path
  end

  def downvote
    @promotion = Promotion.find(params[:id])
    @promotion.downvote_from current_user
    redirect_to :promotion
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promotion
     
      
         @promotion = Promotion.find(params[:id])
   
  
      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promotion_params
      params.require(:promotion).permit(:destination, :details,:image)
    end
end
