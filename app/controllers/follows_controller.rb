class FollowsController < ApplicationController
  def create
    @follow = Follow.new(follow_params)

    if @follow.save
      render json: @follow
    else
      render json: {error: @follow.errors.full_messages}, status: 422
    end
  end

  def destroy
    Follow.delete(params[:id])

    render json: {deleted: params[:id]}
  end

  private
  def follow_params
    params.require(:follow).permit(:user_id, :project_id)
  end
  
end
