class FlightsController < ApplicationController
  def index
    @airport_codes = Airport.all.map { |airport| [airport.code, airport.id] }
    @flight_dates = Flight.all.map { |flight| [flight.departure_time.to_date.strftime('%d/%m/%Y'), flight.departure_time.to_date] }
    @flight_dates = @flight_dates.uniq
  end
end
