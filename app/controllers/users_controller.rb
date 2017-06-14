class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
    end 

    def new
    	@user = User.new 
    end 

    def create
    	@user = User.new(user_params)
    	if @user.save 
    		flash[:warning] = "注册成功"
        else
        	render 'new'
        end 
    end 


    private

    def user_params
	  params.require(:user).permit(:name, :telephone, :email, :password, :password_confirmation)
    end 

end
