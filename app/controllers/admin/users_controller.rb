class Admin::UsersController < ApplicationController

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


end
