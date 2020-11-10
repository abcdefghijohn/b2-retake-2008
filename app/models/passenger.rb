class Passenger < ApplicationRecord
  has_many :flight_passengers
  has_many :flights, through: :flight_passengers, dependent: :delete_all
end
