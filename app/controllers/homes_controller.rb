class HomesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]

  def index
    @users = User.all
    render :index
  end
  
end