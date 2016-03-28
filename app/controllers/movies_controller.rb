class MoviesController < ApplicationController

	def index
		@movies = Movie.all
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			flash[:success] = "Movie has been successfully saved."
			redirect_to @movie
		else
			flash[:danger] = "Something went wrong."
			render 'new'
		end
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def update
	end

	def destroy
		@movie.find(params[:id]).destroy
	end

	private

	def movie_params
		params.require(:movie).permit(:name, :img_url, :imdb_url)
	end

end