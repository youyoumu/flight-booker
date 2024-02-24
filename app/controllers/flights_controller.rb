class FlightsController < ApplicationController
  def index
    @airport_codes = Airport.all.map { |airport| [airport.code, airport.id] }
    @flight_dates = Flight.all.map { |flight| [flight.departure_time.to_date.strftime('%d/%m/%Y'), flight.departure_time.to_date] }
    @flight_dates = @flight_dates.uniq
    if params[:search] == 'true' && !params[:num_tickets].blank?
      @flights = Flight.includes(:departure_airport, :arrival_airport).where(
        departure_airport_id: params[:departure_airport_id]).where(
          arrival_airport_id: params[:arrival_airport_id]).where(
            'DATE(departure_time) = ?', Date.parse(params[:departure_date])
          )
      @num_tickets = params[:num_tickets]
    end
  end
end
