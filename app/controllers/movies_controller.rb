class MoviesController < ApplicationController


	def index
		@movies = Movie.all
	end

	def new
		@movie = Movie.new
    # @event = Event.new
	end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie
    else
      render "movies/_form"
    end
  end

	def show
		@movie = Movie.find(params[:id])
    # @event = Event.find(params[:id])
	end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update_attributes(params[:movie])
        redirect_to @movie
    else
      render "movies/_form"
    end
  end

	def destroy
		@movie.find(params[:id]).destroy
	end

	private

	def movie_params
		params.require(:movie).permit(:name, :movie_image, :imdb_url)
	end

end

