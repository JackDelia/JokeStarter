class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render :show
    else
      render json: {errors: @comment.errors.full_messages}
    end
  end

  def index
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :user_id, :project_id)
  end
end