class PlacesController < ApplicationController

  before_action :search_place, only: [:index, :search]
  
  def index
    @places = Place.all 

  end

  def new
    @cook = Cook.new
  end
  
  def create
    @cook = Cook.new(cooks_params)
   if @cook.save
     redirect_to  root_path
   else
     render :new
   end
  end
    def search
      @results = @p.result.includes(:place)
      @places = Place.all 
      @cooks = Cook.all

    end
   
    
  private

  def search_place
    @p = Place.ransack(params[:q])  
  end

end
