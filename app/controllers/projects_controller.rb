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
    @project = Project.find_by_id(params[:id])
    @funding = get_funding(@project)
    if @project
      render :show
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
    proj = params.require(:project).permit(:user_id, :title, :body, :goal, :thumbnail_image_url)
    proj[:rewards] = params[:project][:rewards].values

    proj
  end

  def get_funding(project)
    sum = 0;
    project.contributions.each do |contribution|
      sum+= contribution.amount
    end
    sum
  end

end
