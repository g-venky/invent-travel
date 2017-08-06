class MyDoubtsController < ApplicationController
  before_action :set_my_doubt, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  # GET /my_doubts
  # GET /my_doubts.json
  def index
    @my_doubts = MyDoubt.all
  end

  # GET /my_doubts/1
  # GET /my_doubts/1.json
  def show
  end

  # GET /my_doubts/new
  def new
    @my_doubt = current_user.my_doubts.build
  end

  # GET /my_doubts/1/edit
  def edit
  end

  # POST /my_doubts
  # POST /my_doubts.json
  def create
    @my_doubt = current_user.my_doubts.build(my_doubt_params)

    respond_to do |format|
      if @my_doubt.save
        format.html { redirect_to @my_doubt, notice: 'My doubt was successfully created.' }
        format.json { render :show, status: :created, location: @my_doubt }
      else
        format.html { render :new }
        format.json { render json: @my_doubt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_doubts/1
  # PATCH/PUT /my_doubts/1.json
  def update
    respond_to do |format|
      if @my_doubt.update(my_doubt_params)
        format.html { redirect_to @my_doubt, notice: 'My doubt was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_doubt }
      else
        format.html { render :edit }
        format.json { render json: @my_doubt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_doubts/1
  # DELETE /my_doubts/1.json
  def destroy
    @my_doubt.destroy
    respond_to do |format|
      format.html { redirect_to my_doubts_url, notice: 'My doubt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_doubt
      @my_doubt = MyDoubt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_doubt_params
      params.require(:my_doubt).permit(:destination, :doubt_details)
    end
end
