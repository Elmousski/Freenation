class CommentController < ApplicationController

before_action :find_event

	def create 
		@comment = @event.comment.create(params[:comment].permit(:content))
		@comment.user_id = current_user.id
		@comment.save
		if @comment.save
			redirect_to event_path(@event)
		else
			render "new"
		end
	end


	private 

	def find_event
		@event = event.find(params[:event_id])
	end
end
