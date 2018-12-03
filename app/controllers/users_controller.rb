class UsersController < ApplicationController 
	before_action :set_user, only: [:show, :edit, :update, :destroy]

	def index
		@users = User.all
	end

	def show
	end

	def destroy
		@user.destroy
		redirect_id
	end


	private
	def set_user
		@user = User.find[params[:id]]
	end



end
