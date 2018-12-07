class ProfilsController < ApplicationController

	def index 
		@profil = Profil.all
	end 


	def show
  		@profil = Profil.find(params[:id])
	end

	def new
		@profil = Profil.new
	end

	def create
		@profil = Profil.find(params[:profil])
		if @profil.save
			redirect_to root_path :notice => "Your informations was saves"
		else
			render "new"
		end
    end

	def edit
        @profil = Profil.find[param[:id]]
	end

	def update 
		@profil = Profil.find[param[:id]]
		if @profil.update_attributes(params[:profil])
			redirect_to root_path :notice => "You're informations was updated"
		else
			render "edit"
		end
	end

	def destroy
		@profil.destroy
		redirect_to user_index_path
	end
end
