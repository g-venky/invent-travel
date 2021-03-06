class StallsController < ApplicationController
  before_action :set_stall, only: [:show, :edit, :update, :destroy]
  
 
  # GET /stalls
  # GET /stalls.json
  def index
            session[:conversations] ||= []
 
    @users = User.all.where.not(id: current_user)
    @users = User.order(created_at: :desc)
  
    @conversations = Conversation.includes(:recipient, :messages)
                                 .find(session[:conversations])
   @stalls = Stall.all

  end
   def stall_promotions
 @stall = Stall.find(params[:id])
 @promotions = @stall.promotions
 @promotions=Promotion.order(created_at: :desc)

 #render plain: {posts: @posts.inspect, user: @user.inspect} 
end
  def stall_brouchers
 @stall = Stall.find(params[:id])
 @brouchers = @stall.brouchers

 #render plain: {posts: @posts.inspect, user: @user.inspect} 
end
  def stall_reviews
 @stall = Stall.find(params[:id])
 @reviews = @stall.reviews
 

 #render plain: {posts: @posts.inspect, user: @user.inspect} 
end
  def stall_contacts
 @stall = Stall.find(params[:id])
 @contacts = Contact.all

 #render plain: {posts: @posts.inspect, user: @user.inspect} 
end
  # GET /stalls/1
  # GET /stalls/1.json
  def show
                session[:conversations] ||= []
 
    @users = @stall.company.user
  
    @conversations = Conversation.includes(:recipient, :messages)
                                 .find(session[:conversations])
 
  end

# def stall
  #if @stall = Stall.find(params[:id])
   # render 'stall'
  #else
    #render 'new'
  #end
#end

  def new
 if current_user.company.stall 
  redirect_to stall_path(current_user.company.stall) 
 else 
  @stall = current_user.company.build_stall
 end

 #@stall = current_seller.build_stall # render 'index'
  
end
  # GET /stalls/1/edit
  def edit
  end
 
  # POST /stalls
  # POST /stalls.json
  def create
  
    @stall = current_user.company.build_stall(stall_params)

    respond_to do |format|
      if @stall.save
        format.html { redirect_to @stall, notice: 'Stall was successfully created.' }
       format.json { render :show, status: :created, location: @stall }
      else
        format.html { render :new }
        format.json { render json: @stall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stalls/1
  # PATCH/PUT /stalls/1.json
  def update
    respond_to do |format|
      if @stall.update(stall_params)
        format.html { redirect_to @stall, notice: 'Stall was successfully updated.' }
        format.json { render :show, status: :ok, location: @stall }
      else
        format.html { render :edit }
        format.json { render json: @stall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stalls/1
  # DELETE /stalls/1.json
  def destroy
    @stall.destroy
    respond_to do |format|
      format.html { redirect_to stalls_url, notice: 'Stall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
    def contact
    user = User.find(params[:user_id])
    @profile =  current_user.profile
    contact = @profile.user.contact
    @profile.contact.push user.email unless contact.include?(user.email)
    @profile.save

  
    redirect_to :contactss
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stall
      @stall = Stall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stall_params
     params.require(:stall).permit(:avatar,:image,:about ,:destination,:offices,segments:[])
    end
end
