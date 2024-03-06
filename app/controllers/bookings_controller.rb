class BookingsController < ApplicationController
  def new
    if Flight.exists?(params[:flight_id])
      @flight = Flight.find(params[:flight_id])
      @num_tickets = params[:num_tickets].to_i

      @booking = Booking.new
      @num_tickets.times { @booking.passengers.build }
    else
      redirect_to flights_path
    end
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    elsif Flight.exists?(params[:booking][:flight_id])
      @flight = Flight.find(params[:booking][:flight_id])
      @num_tickets = params[:booking][:num_tickets].to_i
      render :new, status: :unprocessable_entity
    else
      redirect_to flights_path
    end
  end

  def show
    @passenger = Passenger.new
    if Booking.exists?(params[:id])
      @booking = Booking.find(params[:id])
    else
      redirect_to flights_path
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :show, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:id, :flight_id, passengers_attributes: %i[name email])
  end
end
