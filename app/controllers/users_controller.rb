class UsersController < ApplicationController
  
  # provided by declarative authorization gen
  filter_resource_access

  def index
    @users = User.limit(10)
          #session[:current_user_id] = 11
  end
  
  def new
  	@user = User.new
  	#render :layout => false
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      #session[:user_id] = @user.id
      redirect_to root_url, notice: "Success : Sign up!"
    else
      render "new"
    end
  end
end
