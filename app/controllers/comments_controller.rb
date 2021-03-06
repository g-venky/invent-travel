class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]


  def create
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.new(comment_params)
    @comment.user = current_user

    respond_to do |format|
      if @comment.save
        
          (@topic.users.uniq-[current_user]).each do |user|
        Notification.create(recipient: user, actor: current_user, action: "posted", notifiable: @comment)
      end

        format.html {  redirect_back fallback_location: @topic, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end



  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:topic_id, :body, :user)
    end
end
