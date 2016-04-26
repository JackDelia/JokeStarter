class ProjectsController < ApplicationController

  def create
    @project = Project.new(project_params)
    if @project.save
      render json: @project
    else
      render json: {errors: @project.errors.full_messages}, status: 400
    end

  end

  def index
    render json: Project.all
  end

  def show
    @project = Project.find_by_id(project_params)
    if @project
      render json: @project
    else
      render json: {errors: ["Project Not Found"]}, status: 404
    end
  end

  def destroy
    if Project.delete(params[:id]) != 0
      render json: ["user deleted"]
    else
      render json: {errors: ["Project Not Found"]}, status: 404
    end
  end

  private
  def project_params
    params.require(:project).permit(:user_id, :title, :body, :rewards, :goal)
  end
end
