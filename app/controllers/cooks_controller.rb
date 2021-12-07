class CooksController < ApplicationController
  before_action :search_product, only: [:index, :search]

  def index
    @cooks = Cook.all
  end

  def new
    @cook = Cook.new
  end

  def create
    @cook = Cook.new(cooks_params)
    if @cook.save
      redirect_to root_path
    else
      render :new
    end
  end

  def search
    @results = @p.result.includes(:category)
  end

  private

  def cooks_params
    params.require(:cook).permit(:image, :title, :store, :cooksentence)
  end

  def search_cook
    @p = cook.ransack(params[:q])
  end
end
