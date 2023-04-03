class SpotsController < ApplicationController

  def index
    @spots = Spot.all
    @spot = Spot.find_by(id: params[:id])
  end
  
end
