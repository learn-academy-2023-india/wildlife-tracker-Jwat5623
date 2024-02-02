class AnimalSightingsReportsController < ApplicationController
  def show
    @animal = Animal.find(params[:id])
    render json: @animal, include: :sightings
  end

  def index
    start_date = params[:start_date]
    end_date = params[:end_date]
    sightings = Sighting.where(date: start_date..end_date)
    render json: sightings
  end
end

