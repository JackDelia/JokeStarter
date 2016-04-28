class ContributionsController < ApplicationController
  def index
    @contributions = Contribution.find_by_project_id(params[:project_id])
    render json: @contributions
  end

  def create
    @contribution = Contribution.new(contribution_params)
    if @contribution.save
      render json: @contribution
    else
      render json: {errors: ["Invalid COntribution"]}
    end
  end

  private
  def contribution_params
    par = params.require(:contribution).permit(:user_id, :amount)
    par[:project_id] = params[:project_id]

    par
  end
end
