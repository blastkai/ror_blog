class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end
  
  def create
    @comment = Comment.new(comment_params)
    #@comment.post_id = current_user.id 
    #@comment.post_id = current_user.id
    @comment.user_id = 1
    @comment.save

    redirect_to :back
  end

  def show

  end 
###################################################
  private

  def comment_params
    params.require(:comment).permit( :comment_content)
  end
end
