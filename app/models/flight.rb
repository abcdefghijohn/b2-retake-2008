class Flight < ApplicationRecord
  belongs_to :airline

  has_many :flight_passengers
  has_many :passengers, through: :flight_passengers, dependent: :delete_all

  def num_of_adults
    self.passengers.where('age > 18').count
  end

  def num_of_minors
    self.passengers.where('age < 18').count
  end
end
