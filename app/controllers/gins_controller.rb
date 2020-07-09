class GinsController < ApplicationController
  before_action :authenticate_account!
  before_action :set_gin, only: [:show, :edit, :update, :destroy]


  # GET /gins
  # GET /gins.json
  def index
    @gins = Gin.page params[:page]
    
    
  end

  # GET /gins/1
  # GET /gins/1.json
  def show
    
  end

  # GET /gins/new
  def new
    @gin = Gin.new
  end

  # GET /gins/1/edit
  def edit
  end

  # POST /gins
  # POST /gins.json
  def create
    @gin = Gin.new(gin_params)

    respond_to do |format|
      if @gin.save
        format.html { redirect_to @gin, notice: 'Gin was successfully created.' }
        format.json { render :show, status: :created, location: @gin }
      else
        format.html { render :new }
        format.json { render json: @gin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gins/1
  # PATCH/PUT /gins/1.json
  def update
    respond_to do |format|
      if @gin.update(gin_params)
        format.html { redirect_to @gin, notice: 'Gin was successfully updated.' }
        format.json { render :show, status: :ok, location: @gin }
      else
        format.html { render :edit }
        format.json { render json: @gin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gins/1
  # DELETE /gins/1.json
  def destroy
    @gin.destroy
    respond_to do |format|
      format.html { redirect_to gins_url, notice: 'Gin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def find
      @gin = Array.new
      if request.post? then
       @gin = Gin.where "name like ?", '%' + params[:find] + '%'
      end
  end






  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gin
      @gin = Gin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gin_params
      params.require(:gin).permit(:name, :memo, :image)
    end
end
