require 'rails_helper'

RSpec.describe Flight, type: :model do
  describe 'relationships' do
    it {should belong_to :airline}
    it {should have_many :flight_passengers}
    it {should have_many(:passengers).through(:flight_passengers)}
  end

  describe 'instance_methods' do
    before :each do
    @airline = Airline.create!(name: "American Airlines")
    @flight_1 = @airline.flights.create!(number: "123", date: "10/10/2020", departure_city: "Denver", arrival_city: "Las Vegas")
    @joe = @flight_1.passengers.create!(name: "Joe Bob", age: 33)
    @jim = @flight_1.passengers.create!(name: "Jim Bob", age: 14)
    @jon = @flight_1.passengers.create!(name: "Jon Bob", age: 12)
  end

    it "#num_of_adults" do
    expect(@flight_1.num_of_adults).to eq(1)
  end
    it "#num_of_minorss" do
    expect(@flight_1.num_of_minors).to eq(2)
    end
  end
end
