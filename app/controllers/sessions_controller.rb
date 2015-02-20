class SessionsController < ApplicationController

  skip_before_filter :verify_authenticity_token


  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
       # flash[:notice] = "Welcome back, #{@user.email}!"
        redirect_to travel_requests_path
    else
      redirect_to login_url, notice: "Email or password is invalid."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, notice: "Logged out!"
  end

end 
   