# == Schema Information
#
# Table name: bookings
#
#  id         :bigint           not null, primary key
#  flight_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Booking < ApplicationRecord
  belongs_to :flight
  has_many :booking_passengers
  has_many :passengers, through: :booking_passengers
  accepts_nested_attributes_for :passengers
end
