class ContactadminController < ApplicationController
  skip_before_action :verify_authenticity_token



    def index
      @contact = Contactadmin.new(params[:contactadmin])
    end
    def test
    end

    def create
      @contact = Contactadmin.new(params[:contactadmin])
      @contact.request = request
      respond_to do |format|
        if @contact.deliver
          # re-initialize Home object for cleared form
          @contact = Contactadmin.new
          format.html { render 'index'}
          format.js   { flash.now[:success] = @message = "Thank you for your message. I'll get back to you soon!" }
        else
          format.html { render 'index' }
          format.js   { flash.now[:error] = @message = "Message did not send." }
        end
      end
    end
end
