class MoviesController < ApplicationController
  
  def index
    movies = Movie.all
    render json: movies
  end

  def create
    # byebug
    # params
    # #<ActionController::Parameters {"title"=>"", "year"=>2021, "length"=>"0","director"=>"", ...> 
    movie = Movie.create(movie_params)
    render json: movie, status: :created
  end

  private

  def movie_params
    params.permit(:title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director)
  end 

end