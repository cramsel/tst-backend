class TicketsController < ApplicationController
  def create
    tickets = Ticket.new(
      movie_id: params[:movie_id],
      tickets_sold: params[:tickets_sold],
    )

    movie = Movie.find_by(id: tickets.movie_id)

    movie.tickets_remaining -= tickets.tickets_sold
    if movie.save
      render json: movie
    else
      render json: { message: "This movie doesn't have that many tickets left." }
    end
  end
end
