class FlightsController < ApplicationController
  def show
    @flight = Flight.find(params[:id])
  end

  def new
    @passenger = Passenger.find(params[:passenger_id])
  end

  def create
    airline = Airline.all.first.id
    passenger = Passenger.find(params[:passenger_id])
    passenger.flights.create!(flight_params)
    render :new
  end

  private
  def flight_params
    params.permit(:number, :date, :departure_city, :arrival_city, :airline_id)
  end
end
