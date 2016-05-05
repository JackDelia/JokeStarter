class ContributionsController < ApplicationController
  def index
    @contributions = Contribution.find_by_project_id(params[:project_id])
    render json: @contributions
  end

  def create
    @contribution = Contribution.new(contribution_params)
    @project = Project.find(params[:project_id])

    if @contribution.save
      render "/projects/show"
    else
      render json: {errors: ["Invalid Contribution"]}, status: 400
    end
  end

  private
  def contribution_params
    params.require(:contribution).permit(:user_id, :amount, :project_id)
  end
end
