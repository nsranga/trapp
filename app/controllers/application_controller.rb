class ApplicationController < ActionController::Base

  helper :all
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery 

  # for declarative authorizaiton to know current user 
#  before_filter { |c| Authorization.current_user = c.current_user }

  before_filter :set_current_user

  def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :role, :first_name, :last_name, :supervisor, :phone)
  end

  protected
  # There are multiple ways of handling authorization failures.  
  # One is to implement a permission denied method as shown below.  
  # If none is defined, either a simple string is displayed
  # to the user ("You are not allowed...", default) or the authorization
  # exception is raised.  TODO state configuration option
  # 
  #def permission_denied
  #  respond_to do |format|
  #    flash[:error] = 'Sorry, you are not allowed to view the requested page.'
  #    format.html { redirect_to(:back) rescue redirect_to('/') }
  #    format.xml  { head :unauthorized }
  #    format.js   { head :unauthorized }
  #  end
  #end
  
  # set_current_user sets the global current user for this request.  This
  # is used by model security that does not have access to the
  # controller#current_user method.  It is called as a before_filter.
  def set_current_user
    Authorization.current_user = current_user
  end
  
  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
    end
end
