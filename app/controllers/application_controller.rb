class ApplicationController < ActionController::Base
	    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters

        	devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :age, :city, :title_job, :language1, :language2, :language3])
			devise_parameter_sanitizer.permit(:account_update, keys: [:last_name, :first_name, :age, :city, :title_job, :language1, :language2, :language3])
        end
end
