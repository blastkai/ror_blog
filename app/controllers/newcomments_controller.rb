class NewcommentsController < ApplicationController
  def index
    @newcomments = Newcomment.all
  end
  
  def createcomment
    @newcomment = Newcomment.new(newcomment_params)
    #@newcomment.post_id = current_user.id 
    #@newcomment.post_id = current_user.id
    @newcomment.user_id = current_user.id

    @newcomment.save

    redirect_to :back
  end

  def show

  end 
###################################################
  private

  def newcomment_params
    params.require(:newcomment).permit( :comment_content, :post_id)
  end
end
