class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if(@user.reset_session_token_and_save)
      session[:session_token] = @user.session_token
      render :show
    else
      render json: {errors: @user.errors.full_messages}, status: 400
    end
  end

  def update
    @user = User.find(params[:id]);
    if @user.update(user_params)
      render :show
    else
      render json: {errors: ["Invalid update"]}
    end
  end

  def index
    @users = User.includes(:projects)
    render :index
  end

  def show
    @user = User.find(params[:id])
    if @user
      render :show
    else
      render json: {errors: ["User Not Found"]}, status: 404
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :money_in_cents, :avatar_url);
  end
end
