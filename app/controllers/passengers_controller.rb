class PassengersController < ApplicationController
  def new
    @passenger = Passenger.new
  end

  def create
    @passenger = Passenger.new
    booking = Booking.find(params[:bookings][:id].to_i)
    @passenger.bookings << booking
    @passenger.assign_attributes(passenger_params)

    if @passenger.save
      redirect_to booking_path(booking)
    else
      # to do
    end
  end

  private

  def passenger_params
    params.require(:passenger).permit(:name, :email, bookings_attributes: [:id])
  end
end
