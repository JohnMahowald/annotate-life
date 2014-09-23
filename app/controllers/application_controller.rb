class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  helper_method :current_user, :signed_in?
  
  private
  
  def current_user
    return nil unless session[:token]
    @current_user ||= User.find_by_session_token(session[:token])
  end
  
  def login!(user)
    session[:token] = user.reset_session_token!
  end
  
  def logout!(user)
    user.reset_session_token!
    session[:token] = nil
  end
  
  def require_login
    redirect_to new_session_url unless signed_in?
  end
  
  def redirect_current_user
    redirect_to root_url if signed_in?
  end
  
  def signed_in?
    !!current_user
  end
  
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
