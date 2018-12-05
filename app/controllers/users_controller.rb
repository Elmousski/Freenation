class UsersController < ApplicationController 
	before_action :set_user, only: [:show, :edit, :update, :destroy]

	def index
		@users = User.all
	end

	def show
		  @user = User.find(params[:id])
	end

	def edit
	end

	def destroy
		@user.destroy
		redirect_to root_path
	end

	def edit
		@user = User.find(params[:id])
	end


	private
	def set_user
	end

	def user_params
		params.require(:user).permit(:email, :password)
	end

end
