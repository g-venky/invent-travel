class BrouchersController < ApplicationController
  before_action :set_broucher, only: [:show, :edit, :update, :destroy]

  # GET /brouchers
  # GET /brouchers.json
  def index
    @brouchers = Broucher.all
  end

  # GET /brouchers/1
  # GET /brouchers/1.json
  def show
  end

  # GET /brouchers/new
  def new
      if current_user.company.present?
      if current_user.company.stall.present?
    @broucher = current_user.company.stall.brouchers.build
      else 
        redirect_to new_stall_path
      end
    else 
      redirect_to new_company_path
  end
end

  # GET /brouchers/1/edit
  def edit
  end

  # POST /brouchers
  # POST /brouchers.json
  def create
    @broucher = current_user.company.stall.brouchers.build(broucher_params)

    respond_to do |format|
      if @broucher.save
        format.html { redirect_to @broucher, notice: 'Broucher was successfully created.' }
        format.json { render :show, status: :created, location: @broucher }
      else
        format.html { render :new }
        format.json { render json: @broucher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brouchers/1
  # PATCH/PUT /brouchers/1.json
  def update
    respond_to do |format|
      if @broucher.update(broucher_params)
        format.html { redirect_to @broucher, notice: 'Broucher was successfully updated.' }
        format.json { render :show, status: :ok, location: @broucher }
      else
        format.html { render :edit }
        format.json { render json: @broucher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brouchers/1
  # DELETE /brouchers/1.json
  def destroy
    @broucher.destroy
    respond_to do |format|
      format.html { redirect_to brouchers_url, notice: 'Broucher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_broucher
      @broucher = Broucher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def broucher_params
     params.require(:broucher).permit(:document,:title)
    end
end
