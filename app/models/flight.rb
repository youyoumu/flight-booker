# == Schema Information
#
# Table name: flights
#
#  id                   :bigint           not null, primary key
#  departure_airport_id :integer
#  arrival_airport_id   :integer
#  departure_time       :datetime
#  flight_duration      :interval
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport'
  belongs_to :arrival_airport, class_name: 'Airport'
  has_many :bookings
  has_many :booking_passengers, through: :bookings
  has_many :passengers, through: :booking_passengers
end
