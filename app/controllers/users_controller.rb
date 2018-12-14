class UsersController < ApplicationController 
	before_action :set_user, only: [:show, :edit, :index, :update, :destroy]


	def index
		@users = User.all
	end

	def show
	end

	def edit
	end

	def destroy
		@user.destroy
		redirect_to root_path
	end




	private
	def set_user
		@user = User.find(params[:id])
	end

	def user_params

		params.permit(:email, :password, :last_name, :first_name, :age, :city, :title_job, :language1, :language2, :language3, :avatar)

	end


end
