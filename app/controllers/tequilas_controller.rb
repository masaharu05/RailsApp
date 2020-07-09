class TequilasController < ApplicationController
  before_action :authenticate_account!
  before_action :set_tequila, only: [:show, :edit, :update, :destroy]

  # GET /tequilas
  # GET /tequilas.json
  def index
    @tequilas = Tequila.page params[:page]
  end

  # GET /tequilas/1
  # GET /tequilas/1.json
  def show
  end

  # GET /tequilas/new
  def new
    @tequila = Tequila.new
  end

  # GET /tequilas/1/edit
  def edit
  end

  # POST /tequilas
  # POST /tequilas.json
  def create
    @tequila = Tequila.new(tequila_params)

    respond_to do |format|
      if @tequila.save
        format.html { redirect_to @tequila, notice: 'Tequila was successfully created.' }
        format.json { render :show, status: :created, location: @tequila }
      else
        format.html { render :new }
        format.json { render json: @tequila.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tequilas/1
  # PATCH/PUT /tequilas/1.json
  def update
    respond_to do |format|
      if @tequila.update(tequila_params)
        format.html { redirect_to @tequila, notice: 'Tequila was successfully updated.' }
        format.json { render :show, status: :ok, location: @tequila }
      else
        format.html { render :edit }
        format.json { render json: @tequila.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tequilas/1
  # DELETE /tequilas/1.json
  def destroy
    @tequila.destroy
    respond_to do |format|
      format.html { redirect_to tequilas_url, notice: 'Tequila was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def find
    @tequila = Array.new
    if request.post? then
     @tequila = Tequila.where "name like ?", '%' + params[:find] + '%'
    end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tequila
      @tequila = Tequila.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tequila_params
      params.require(:tequila).permit(:name, :memo)
    end
end
