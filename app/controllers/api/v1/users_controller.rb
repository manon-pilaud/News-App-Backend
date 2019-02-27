class Api::V1::UsersController < ApplicationController
  def index
    render json: User.all
  end

  # def show
  #   render json: {
  #     user: User.find(params[:id])
  #   }
  # end

  def profile
  token = request.headers['Authentication'].split(' ')[1]
  payload = decode(token)
  @user = User.find(payload["user_id"])
  render json: {user: @user,
                countries: @user.countries,
                articles: @user.articles
               }, status: :accepted
end

  def create
    @user = User.create(user_params)
    render json: {
      user: @user,
      token: encode({user_id: @user.id})
      }, status: accepted
  end


  def update
    User.find(params[:id]).update(user_params)
    render json: User.find(params[:id])
  end

  def destroy
    render json: User.find(params[:id]).destroy
  end

  private
  def user_params
    params.require(:user).permit(:username,:password)
  end
end
