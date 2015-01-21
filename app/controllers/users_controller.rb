class UsersController < ApplicationController

  def index
    @user = User.all
  end
  
  def new
  	@user = User.new
  	#render :layout => false
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end
end
