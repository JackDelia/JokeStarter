class SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(session_params)
    if @user
      @user.reset_session_token_and_save
      session[:session_token] = @user.session_token
      render json: @user
    else
      render json: {errors: ["Incorrect username/password"]}, status: 400
    end
  end

  def show
    if current_user
      render json: current_user
    else
      render json: {errors: ["Incorrect username/password"]}, status: 400
    end
  end

  def destroy
    current_user.reset_session_token_and_save
    session[:session_token] = nil
    render json: ["logged out"]
  end

  private
  def session_params
    params.require(:user).permit(:username, :password)
  end
end
