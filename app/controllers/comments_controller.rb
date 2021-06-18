class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    @comment = Comment.new
    #@comments = comments.includes(:user)
  end

  def show

  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to root_path
  end

  private

  def comment_params
    params.permit(:text).merge(user_id: current_user.id)
  end
end
