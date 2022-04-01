class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies
  end

  def create
    movie = Movie.new(
      movie_title: params[:movie_title],
      runtime: params[:runtime],
      theater_number: params[:theater_number],
      time_slot: DateTime.parse(params[:time_slot]),
      tickets_remaining: 75,
    )
    if movie.save
      render json: movie
    else
      render json: { errors: movie.errors.full_messages }
    end
  end

  def update
    movie = Movie.find_by(id: params[:id])
    movie.movie_title = params[:movie_title] || movie.movie_title
    movie.runtime = params[:runtime] || movie.runtime
    movie.theater_number = params[:theater_number] || movie.theater_number
    movie.time_slot = DateTime.parse(params[:time_slot]) || movie.time_slot

    if movie.save
      render json: movie
    else
      render json: { errors: movie.errors.full_messages }
    end
  end
end
