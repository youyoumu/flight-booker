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
require "test_helper"

class BookingPassengerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
