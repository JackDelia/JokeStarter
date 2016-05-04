class UpdatesController < ApplicationController
  def create
    @update = Update.new(update_params)
    if(@update.save())
      render json: @update
    else
      render json: {errors: @update.errors.full_messages}
    end
  end

  def index
    render json: Update.all()
  end

  private
  def update_params
    params.require(:update).permit(:body, :project_id, :title)
  end
end
