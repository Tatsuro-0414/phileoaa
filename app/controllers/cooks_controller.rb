class CooksController < ApplicationController

  def index
    @cooks = Cook.all
  end
  
  def new
    @cook = Cook.new
  end
  
  def create
    @cook = ook.new(cook_params)
   if @cook.save
     redirect_to  root_path
   else
     render :new
   end
 end


 private
  def cook_params
    params.require(:cook).permit(:image, :title,:store,:cooksentence).merge(user_id: current_user.id)
  end



end
