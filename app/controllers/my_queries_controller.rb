class MyQueriesController < ApplicationController
  before_action :set_my_query, only: [:show, :edit, :update, :destroy]
   before_action :authenticate_user!, except: [:index]
  # GET /my_queries
  # GET /my_queries.json
  def index
    @my_queries = MyQuery.all
  end

  def my_query_queries
     @my_queries = MyQuery.all
  end
  # GET /my_queries/1
  # GET /my_queries/1.json
  def show
  end

  # GET /my_queries/new
  def new
    @my_query = current_user.my_queries.build
  end

  # GET /my_queries/1/edit
  def edit
  end

  # POST /my_queries
  # POST /my_queries.json
  def create
    @my_query =  current_user.my_queries.build(my_query_params)

    respond_to do |format|
      if @my_query.save
        format.html { redirect_to @my_query, notice: 'My query was successfully created.' }
        format.json { render :show, status: :created, location: @my_query }
      else
        format.html { render :new }
        format.json { render json: @my_query.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_queries/1
  # PATCH/PUT /my_queries/1.json
  def update
    respond_to do |format|
      if @my_query.update(my_query_params)
        format.html { redirect_to @my_query, notice: 'My query was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_query }
      else
        format.html { render :edit }
        format.json { render json: @my_query.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_queries/1
  # DELETE /my_queries/1.json
  def destroy
    @my_query.destroy
    respond_to do |format|
      format.html { redirect_to my_queries_url, notice: 'My query was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_query
      @my_query = MyQuery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_query_params
        params.require(:my_query).permit( :query_number,:destination,:pax,:child,:querytype,:travel_date,:duration,:tour_requirements,:quotes_received )
    end
end
