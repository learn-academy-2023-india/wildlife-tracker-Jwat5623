# app/controllers/animals_controller.rb

class AnimalsController < ApplicationController
    before_action :set_animal, only: [:show, :update, :destroy]
  
    def new
      @animal = Animal.new
      @animal.sightings.build # Build an empty sighting associated with the animal
    end
  
    def create
      @animal = Animal.new(animal_params)
      if @animal.save
        render json: @animal, status: :created
      else
        render json: @animal.errors, status: :unprocessable_entity
      end
    end
  
    # ... existing code ...
  
    private
  
    def set_animal
      @animal = Animal.find(params[:id])
    end
  
    def animal_params
      params.require(:animal).permit(:common_name, :scientific_binomial, sightings_attributes: [:latitude, :longitude, :date])
    end
end
  