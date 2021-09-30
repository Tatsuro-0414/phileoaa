class CooksController < ApplicationController
 
  def index
    @cooks = Cook.all
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

 
 

 private
  def cooks_params
    params.require(:cook).permit(:image,:title,:store,:cooksentence)


  end
end
