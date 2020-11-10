class FlightsController < ApplicationController
  def show
    @flight = Flight.find(params[:id])
  end

  def new
    @passenger = Passenger.find(params[:passenger_id])
  end

  def create
    @airline = Airline.all.first
    passenger = Passenger.find(params[:passenger_id])
    passenger.flights.create!({
      number: params[:flight_number],
      date: params[:date],
      departure_city: params[:departure_city],
      arrival_city: params[:arrival_city],
      airline_id: @airline.id
      })
    redirect_to "/passengers/#{passenger.id}"
  end
end
