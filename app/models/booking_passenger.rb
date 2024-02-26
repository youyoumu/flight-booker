# == Schema Information
#
# Table name: booking_passengers
#
#  id           :bigint           not null, primary key
#  booking_id   :bigint           not null
#  passenger_id :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class BookingPassenger < ApplicationRecord
  belongs_to :booking
  belongs_to :passenger
end
