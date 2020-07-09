class DrinksController < ApplicationController
  before_action :authenticate_account!
  def index
    @gins = Gin.page params[:page]
    @rums = Rum.page params[:page]
    @vodkas = Vodka.page params[:page]
    @tequilas = Tequila.page params[:page]
    @account = current_account
  end

  def login_check
    @account = current_account
  end



end
