require 'rails_helper'

describe "As a visitor" do
  describe "When I visit a flights show page" do
    it "I see that flight's number, date, dep city, arrival city, airline, and all passengers" do
      airline = Airline.create!(name: "American Airlines")
      flight_1 = airline.flights.create!(number: "123", date: "10/10/2020", departure_city: "Denver", arrival_city: "Las Vegas")
      joe = flight_1.passengers.create!(name: "Joe Bob", age: 33)
      jim = flight_1.passengers.create!(name: "Jim Bob", age: 35)
      jon = flight_1.passengers.create!(name: "Jon Bob", age: 37)
      visit "/flights/#{flight_1.id}"

      expect(page).to have_content(flight_1.number)
      expect(page).to have_content(flight_1.date)
      expect(page).to have_content(flight_1.departure_city)
      expect(page).to have_content(flight_1.arrival_city)
      expect(page).to have_content(flight_1.airline.name)

      expect(page).to have_content(joe.name)
      expect(page).to have_content(jim.name)
      expect(page).to have_content(jon.name)
    end
  end
end
