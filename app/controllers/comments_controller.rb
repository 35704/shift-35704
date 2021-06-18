class CommentsController < ApplicationController

  def create
    @comment = Comment.new
    @comment.save(comment_params)
    redirect_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, shift_id: params[:shift_id])
  end
end
