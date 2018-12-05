class CommentsController < ApplicationController

def new
  @comment = Comment.new
end

def create
  @rentee = User.find(session[:user_id])
  @comment = Comment.new(comment_params)
  @comment.rentee = @rentee
  @comment.save
  redirect_to ad_path(comment_params[:ad_id])
end

private
def comment_params
  params.require(:comment).permit(:ad_id, :comment)
end

end
