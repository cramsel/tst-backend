class MoviesController < ApplicationController
  def index
    today = DateTime.now
    movies = Movie.where(time_slot: today.midnight..today.end_of_day)
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
end
