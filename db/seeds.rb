# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

['AAA', 'BBB', 'CCC', 'DDD', 'EEE', 'FFF', 'GGG', 'HHH', 'III', 'JJJ'].each do |code|
  Airport.find_or_create_by!(code: code)
end

date = 1
[1, 2, 3, 4, 5, 6, 7, 8, 9].each do |id|
  Flight.find_or_create_by!(departure_airport_id: id, arrival_airport_id: (id + 1),
  departure_time: DateTime.new(2024, 2, date, 13, 30, 0))
  date += 1
end
