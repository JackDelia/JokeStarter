class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if(@user.reset_session_token_and_save)
      session[:session_token] = @user.session_token
      render json: @user
    else
      render json: {errors: @user.errors.full_messages}, status: 400
    end
  end

  def index
    render json: User.all
  end
    
  def show
    @user = User.find(params[:id])
    if user
      render json: @user
    else
      render json: {errors: ["User Not Found"]}, status: 404
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password);
  end
end
