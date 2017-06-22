class Admin::UsersController < ApplicationController
  before_action :require_is_admin


  def index
    @q = User.ransack(params[:q])
    @users = @q.result
  end 

  def edit
    @user = User.find(params[:id])
  end 

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "Profile updated"
      redirect_to admin_users_path 
    else 
    	redirect_to admin_users_path
    end 
  end 

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	flash[:success] = "User deleted"
  	redirect_to admin_users_path
  end 

  private

  def  user_params
	  params.require(:user).permit(:name, :telephone, :email, :password, :password_confirmation, :is_admin, :remark)
  end 

  def require_is_admin
    if !current_user.is_admin?
      flash[:alert] = "You are not admin"
      redirect_to root_path
    end 
  end


end
