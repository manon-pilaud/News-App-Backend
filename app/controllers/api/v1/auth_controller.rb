class Api::V1::AuthController < ApplicationController

  def create # POST /api/v1/login
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      render json: {
          message: "correct username and password",
          error: false,
          user: @user.username,
          token: encode({user_id: @user.id})
        }, status: :accepted
    else
      render json: {
        message: "the password or username you have entered is incorrect",
        error: true
      }, status: :unauthorized
    end
  end

end
