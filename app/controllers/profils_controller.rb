class ProfilsController < ApplicationController
  before_action :set_profil, only: [:show, :edit, :update, :destroy]

	def index 
		@profil = Profil.all
	end 


	def show
		
	end

	def new
		@profil = Profil.new
	end

	def create
		@profil = Profil.create(profil_params)
		@profil.creator = current_user
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


	 private

    def set_profil
      @profil = Profil.find(params[:id])
    end

    def profil_params
      params.permit(:last_name, :first_name, :age, :title_job, :life_description, :city, :language1, :language2, :language3)
    end
end
    
