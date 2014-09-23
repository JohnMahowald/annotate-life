class UsersController < ApplicationController
  before_action :redirect_current_user
  
  def new
  end
  
  def create
    @user = User.new(user_params)
    
    if @user.update_attributes(user_params)
      login!(@user)
      redirect_to root_url
    else
      flash.now[:notice] = @user.errors.full_messages
      render :new
    end    
  end
end
