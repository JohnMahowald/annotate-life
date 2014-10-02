class SessionsController < ApplicationController
  before_action :redirect_current_user, only: [:new, :create]
  
  def new
  end
  
  def create
    @user = User.find_by_credentials(user_params)
    
    if @user
      login!(@user)
      assign_background
      redirect_to 
    else
      flash.now[:notice] = ["Invalid Username or Password"]
      render :new
    end
  end
  
  def destroy
    return unless current_user
    logout!(current_user)
    redirect_to new_session_url
  end
end
