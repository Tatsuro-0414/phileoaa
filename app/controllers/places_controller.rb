class PlacesController < ApplicationController

  before_action :search_place, only: [:index, :search]
  def index
    @places = Place.all 
  end

  

    def search
      @results = @p.result.includes(:place)
      @places = Place.all 
    end
   

  private

  def search_place
    @p = Place.ransack(params[:q])  
  end
end

