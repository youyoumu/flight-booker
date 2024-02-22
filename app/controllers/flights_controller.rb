class FlightsController < ApplicationController
  def index
    @airport_codes = Airport.all.map { |airport| [airport.code, airport.id] }
    @flight_dates = Flight.all.map { |flight| flight.departure_time.strftime('%d/%m/%Y') }
  end
end
