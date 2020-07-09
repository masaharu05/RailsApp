class VodkasController < ApplicationController
  before_action :authenticate_account!
  before_action :set_vodka, only: [:show, :edit, :update, :destroy]

  # GET /vodkas
  # GET /vodkas.json
  def index
    @vodkas = Vodka.page params[:page]
  end

  # GET /vodkas/1
  # GET /vodkas/1.json
  def show
  end

  # GET /vodkas/new
  def new
    @vodka = Vodka.new
  end

  # GET /vodkas/1/edit
  def edit
  end

  # POST /vodkas
  # POST /vodkas.json
  def create
    @vodka = Vodka.new(vodka_params)

    respond_to do |format|
      if @vodka.save
        format.html { redirect_to @vodka, notice: 'Vodka was successfully created.' }
        format.json { render :show, status: :created, location: @vodka }
      else
        format.html { render :new }
        format.json { render json: @vodka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vodkas/1
  # PATCH/PUT /vodkas/1.json
  def update
    respond_to do |format|
      if @vodka.update(vodka_params)
        format.html { redirect_to @vodka, notice: 'Vodka was successfully updated.' }
        format.json { render :show, status: :ok, location: @vodka }
      else
        format.html { render :edit }
        format.json { render json: @vodka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vodkas/1
  # DELETE /vodkas/1.json
  def destroy
    @vodka.destroy
    respond_to do |format|
      format.html { redirect_to vodkas_url, notice: 'Vodka was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def find
    @vodka = Array.new
    if request.post? then
     @vodka = Vodka.where "name like ?", '%' + params[:find] + '%'
    end
end





  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vodka
      @vodka = Vodka.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vodka_params
      params.require(:vodka).permit(:name, :memo)
    end
end
