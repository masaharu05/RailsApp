class HelloController < ApplicationController
  before_action :authenticate_account!, only: :login_check
  def index
  end

  def login_check
  end
end
