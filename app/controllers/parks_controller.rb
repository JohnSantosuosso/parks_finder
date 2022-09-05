class ParksController < ApplicationController
  def index
    @parks = ParkFacade.get_parks(params[:state])
  end
end