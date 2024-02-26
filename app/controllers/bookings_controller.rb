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
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show

  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
