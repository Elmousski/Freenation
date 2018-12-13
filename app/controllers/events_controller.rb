class EventsController < ApplicationController 
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all.order('created_at DESC').paginate(page: params[:page], per_page: 6)
  end

  def show

  end


  def new
    @event = Event.new
  end

  def edit
  end


  def create
    @event = Event.create(event_params)
    @event.creator = current_user
    if @event.save
  	  @event.attendees << current_user
      flash[:success] = "Votre événement a bien été créé !"    
  		redirect_to @event
  	else render 'new'
  	end
 
  end


  def update
    unless current_user == @event.creator
    redirect_back fallback_location: root_path, notice: 'User is not owner'
  end
    @event.update(event_params)
    redirect_to events_path(@event.id)
  end

  def destroy
    @event.destroy
    redirect_to event_path
  end


  def subscribe
    @event = Event.find(params[:id])
    if 
    @event.attendees.include? current_user
    flash[:error] = "Vous participez déjà à l'événement !" 
    redirect_to @event
    else
    @event.attendees << current_user
    flash[:success] = "Vous participez à l'événement !" 
    redirect_to @event
    end
  end

  

  
  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.permit(:title_event, :picture, :description_event, :ending_date, :country, :city, :number_of_places, :starting_date, :price, :creator, :address, :latitude, :longitude)
    end
end
