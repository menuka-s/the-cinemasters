class EventsController < ApplicationController

  def index
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.creator = current_user
    if @event.save
      redirect_to @event
    else
      render "events/new"
    end
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      redirect_to @event
    else
      render 'events/edit'
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
  end

  private
    def event_params
      params.require(:event).permit(:pub_date, :name, :movie)
    end

end
