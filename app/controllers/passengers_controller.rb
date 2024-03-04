class PassengersController < ApplicationController
  def new
    @passenger = Passenger.new
  end

  def create
    @passenger = Passenger.new(name: params[:passenger][:name], email: params[:passenger][:email])

    @passenger.bookings << Booking.find(params[:passenger][:booking_id].to_i)

    return unless @passenger.save

    redirect_to booking_path(Booking.find(params[:passenger][:booking_id].to_i))
  end

  private

  def passenger_params
    params.require(:passenger).permit(:name, :email)
  end
end
