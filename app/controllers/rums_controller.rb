class RumsController < ApplicationController
  before_action :authenticate_account!
  before_action :set_rum, only: [:show, :edit, :update, :destroy]

  # GET /rums
  # GET /rums.json
  def index
    @rums = Rum.page params[:page]
  end

  # GET /rums/1
  # GET /rums/1.json
  def show
  end

  # GET /rums/new
  def new
    @rum = Rum.new
  end

  # GET /rums/1/edit
  def edit
  end

  # POST /rums
  # POST /rums.json
  def create
    @rum = Rum.new(rum_params)

    respond_to do |format|
      if @rum.save
        format.html { redirect_to @rum, notice: 'Rum was successfully created.' }
        format.json { render :show, status: :created, location: @rum }
      else
        format.html { render :new }
        format.json { render json: @rum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rums/1
  # PATCH/PUT /rums/1.json
  def update
    respond_to do |format|
      if @rum.update(rum_params)
        format.html { redirect_to @rum, notice: 'Rum was successfully updated.' }
        format.json { render :show, status: :ok, location: @rum }
      else
        format.html { render :edit }
        format.json { render json: @rum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rums/1
  # DELETE /rums/1.json
  def destroy
    @rum.destroy
    respond_to do |format|
      format.html { redirect_to rums_url, notice: 'Rum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def find
    @rum = Array.new
    if request.post? then
     @rum = Rum.where "name like ?", '%' + params[:find] + '%'
    end
end





  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rum
      @rum = Rum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rum_params
      params.require(:rum).permit(:name, :memo)
    end
end
