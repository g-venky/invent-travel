class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]
     before_action :authenticate_user!, except: [:index]

  def create
         @my_query = MyQuery.find(params[:my_query_id])
    @quote = @my_query.quotes.new(quote_params)
    @quote.user = current_user
   

    respond_to do |format|
      if @quote.save
             (@my_query.users - [current_user]).each do |user|
        Notification.create(recipient: user, actor: current_user, action: "quoted", notifiable: @quote)
      end
        format.html {  redirect_back fallback_location: @my_query, notice: 'Quote was successfully sended.' }
        format.json { render :show, status: :created, location: @quote }
      else
        format.html { render :new }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotes/1
  # PATCH/PUT /quotes/1.json

  # DELETE /quotes/1
  # DELETE /quotes/1.json
  def destroy
    @quote.destroy
    respond_to do |format|
      format.html { redirect_to quotes_url, notice: 'Quote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quote_params
      params.require(:quote).permit(:my_query_id, :body, :user)
    end
end
