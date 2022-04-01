class MoviesController < ApplicationController
  def index
    today = DateTime.now
    movies = Movie.where(time_slot: today.midnight..today.end_of_day)
    render json: movies
  end
end
