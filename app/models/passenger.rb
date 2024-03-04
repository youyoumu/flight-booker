# == Schema Information
#
# Table name: passengers
#
#  id         :bigint           not null, primary key
#  name       :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Passenger < ApplicationRecord
  has_many :booking_passengers
  has_many :bookings, through: :booking_passengers
  validates :name, presence: true
  validates :email, presence: true
  accepts_nested_attributes_for :bookings
end
