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
end
