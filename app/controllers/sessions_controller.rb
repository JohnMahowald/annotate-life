class SessionsController < ApplicationController
  before_action :redirect_current_user, only: [:new, :create]
  
  def new
  end
  
  def create
    @user = User.find_by_credentials(user_params)
    
    if @user
      login!(@user)
      redirect_to root_url
    else
      flash.now[:notice] = ["Invalid Username or Password"]
      render :new
    end
  end
  
  def destroy
    logout!(current_user)
    redirect_to new_session_url
  end
end
