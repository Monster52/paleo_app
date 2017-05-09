class UsersController < ApplicationController
	def index
		@users = User.all?
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new
	 	@user.user_name = params[:user][:user_name]
   	@user.email = params[:user][:email]
   	@user.password = params[:user][:password]
   	@user.password_confirmation = params[:user][:password_confirmation]

   	if @user.save
      flash[:notice] = "#{@user.user_name} was created"
      redirect_to root_path
    else
      flash.now[:alert] = "There was a problem, try again"
      render :new
    end
	end

	def update

	end

	def edit

	end

	def destroy

	end

	private

	def user_params
		params.require(:user).permit(:user_name, :email)
	end
end
