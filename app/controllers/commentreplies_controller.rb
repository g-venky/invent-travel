class CommentrepliesController < ApplicationController
  before_action :set_commentreply, only: [:show, :edit, :update, :destroy]

  # GET /commentreplies
  # GET /commentreplies.json

  def create

    @comment = Comment.find(params[:comment_id])
    @commentreply = @comment.commentreplies.new(commentreply_params)
    @commentreply.user = current_user


    respond_to do |format|                                    
      if @commentreply.save
        format.html { redirect_to @comment,notice:'Commentreply was successfully created.' }
        format.json { render :show, status: :created, location: @commentreply }
      else
        format.html { render :new }
        format.json { render json: @commentreply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commentreplies/1
  # PATCH/PUT /commentreplies/1.json
  def update
    respond_to do |format|
      if @commentreply.update(commentreply_params)
        format.html { redirect_to @commentreply, notice: 'Commentreply was successfully updated.' }
        format.json { render :show, status: :ok, location: @commentreply }
      else
        format.html { render :edit }
        format.json { render json: @commentreply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commentreplies/1
  # DELETE /commentreplies/1.json
  def destroy
    @commentreply.destroy
    respond_to do |format|
      format.html { redirect_to commentreplies_url, notice: 'Commentreply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commentreply
      @commentreply = Commentreply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commentreply_params
      params.require(:commentreply).permit(:body, :comment_id, :user)
    end
end
