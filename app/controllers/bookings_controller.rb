class BookingsController < ApplicationController
  def new
    if Flight.exists?(params[:flight_id])
      @flight = Flight.find(params[:flight_id])
      @num_tickets = params[:num_tickets].to_i

      @booking = Booking.new
      @num_tickets.times { @booking.passengers.build }
    end
  end

  def create

  end
end
