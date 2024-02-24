class BookingsController < ApplicationController
  def new
    if Flight.find(params[:flight_id]).exists?
      @flight = Flight.find(params[:flight_id])
      @num_tickets = params[:num_tickets]
    end
  end
end
