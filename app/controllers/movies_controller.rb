class MoviesController < ApplicationController

  def index
  end

  def show
    # @event = Event.find(params[:id])
  end

  def new
    # @movie = Movie.new
    # @event = Event.new
  end

  def edit
    # @event = Event.find(params[:id])
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.creator = current_user
    if @movie.save
      redirect_to @movie
    else
      render "movies/form"
    end
  end

  def update
    # @event = Event.find(params[:id])
    # if @event.update_attributes(event_params)
    #   redirect_to @event
    # else
    #   render 'events/edit'
    # end
  end

  def destroy
    # @event = Event.find(params[:id])
    # @event.destroy
  end

  private
    def movie_params
      params.require(:movie).permit(:name, :imdb_url, :img_url)
    end

end
