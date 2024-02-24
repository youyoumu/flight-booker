class BookingsController < ApplicationController
  def new
    if Flight.exists?(params[:flight_id])
      @flight = Flight.find(params[:flight_id])
      @num_tickets = params[:num_tickets]
    end
  end
end
