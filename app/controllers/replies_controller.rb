class RepliesController < ApplicationController
  before_action :set_reply, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_user!, except: [:index, :show,:edit]

  def create
    @my_doubt = MyDoubt.find(params[:my_doubt_id])
    @reply = @my_doubt.replies.new(reply_params)
    @reply.user = current_user

    respond_to do |format|
      if @reply.save
            (@my_doubt.users - [current_user]).each do |user|
        Notification.create(recipient: user, actor: current_user, action: "replied", notifiable: @reply)
      end

        format.html { redirect_back fallback_location: @my_doubt, notice: 'Reply was successfully sended.' }
        format.json { render :show, status: :created, location: @reply }
      else
        format.html { render :new }
        format.json { render json: @reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /replies/1
  # PATCH/PUT /replies/1.json
 
  def destroy
    @reply.destroy
    respond_to do |format|
      format.html { redirect_to replies_url, notice: 'Reply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reply
      @reply = Reply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reply_params
      params.require(:reply).permit(:my_doubt_id, :body, :user)
    end
end
