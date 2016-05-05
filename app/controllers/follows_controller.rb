class FollowsController < ApplicationController
  def create
    @follow = Follow.new(follow_params)

    if @follow.save
      render json: Project.find(@follow.project_id)
    else
      render json: {error: @follow.errors.full_messages}, status: 422
    end
  end

  def destroy
    @follow = Follow.where(follow_params).first
    follow_id = @follow.id
    Follow.delete(follow_id)

    render json: {deleted: @follow.project_id}
  end

  private
  def follow_params
    params.require(:follow).permit(:user_id, :project_id)
  end

end
