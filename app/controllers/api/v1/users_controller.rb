class Api::V1::UsersController < ApplicationController
  def index
    render json: User.all
  end

  def profile
  token = request.headers['Authentication'].split(' ')[1]
  payload = decode(token)
  @user = User.find(payload["user_id"])
  render json: {user: @user.username,
                user_id: @user.id,
                countries: @user.countries,
                articles: @user.articles,
                user_countries: @user.user_countries,
                reading_lists: @user.reading_lists
               }, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
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
