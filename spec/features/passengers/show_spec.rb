require 'rails_helper'

describe "As a visitor" do
  describe "When I visit a passengers show page" do
    it "I see that passengers' name,all flight numbers of the passenger and the numbers are links" do
      airline = Airline.create!(name: "American Airlines")
      flight_1 = airline.flights.create!(number: "123", date: "10/10/2020", departure_city: "Denver", arrival_city: "Las Vegas")
      joe = flight_1.passengers.create!(name: "Joe Bob", age: 33)
    
      visit "/passengers/#{joe.id}"

      expect(page).to have_content(joe.name)
      expect(page).to have_link(joe.flights.number)
    end
  end
end
