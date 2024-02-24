class BookingsController < ApplicationController
  def new
    if Flight.exists?(params[:flight_id])
      @flight = Flight.find(params[:flight_id])
      @num_tickets = params[:num_tickets].to_i

      @booking = Booking.new
      @passengers = []
      @num_tickets.times do
        @passengers << Passenger.new
      end
    end
  end

  def create

  end
end
