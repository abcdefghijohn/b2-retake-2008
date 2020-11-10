require 'rails_helper'

describe "As a visitor" do
  describe "When I visit a passengers show page" do
    it "I see that passengers' name,all flight numbers of the passenger and the numbers are links" do
      airline = Airline.create!(name: "American Airlines")
      flight_1 = airline.flights.create!(number: "123", date: "10/10/2020", departure_city: "Denver", arrival_city: "Las Vegas")
      joe = flight_1.passengers.create!(name: "Joe Bob", age: 33)

      visit "/passengers/#{joe.id}"

      expect(page).to have_content(joe.name)
      expect(page).to have_link(flight_1.number)
    end
  end
  it "I see a form to add a flight " do
    airline = Airline.create!(name: "American Airlines")
    flight_1 = airline.flights.create!(number: "123", date: "10/10/2020", departure_city: "Denver", arrival_city: "Las Vegas")
    joe = flight_1.passengers.create!(name: "Joe Bob", age: 33)

    visit "/passengers/#{joe.id}"

    fill_in :flight_number, with: '456'
    fill_in :date, with: '10/12/2020'
    fill_in :departure_city, with: 'Las Vegas'
    fill_in :arrival_city, with: 'Tokyo'
    click_on("Submit")
    expect(page).to have_content("456")
  end

  it "I click 'Submit' and I am redirected to the passenger show page and I can see the new flight number"
end
