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
		@profil.user = current_user
		if @profil.save
			redirect_to root_path
		else
			render "new"
		end
    end



	def update 
		@profil.update(profil_params)

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
      params.require(:profil).permit(:last_name, :first_name, :age, :title_job, :life_description, :city, :language1, :language2, :language3, :user_id)
    end
end