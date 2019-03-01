class Api::V1::UserCountriesController < ApplicationController
  def index
    render json: UserCountry.all
  end

  def show
    render json: {
      user_country: UserCountry.find(params[:id])
    }
  end

  def create
    render json: UserCountry.create(user_country_params)
  end


  def update
    UserCountry.find(params[:id]).update(user_country_params)
    render json: UserCountry.find(params[:id])
  end

  def destroy
    render json: UserCountry.find(params[:id]).destroy
  end

  private
  def user_country_params
    params.require(:user_country).permit(:user_id,:country_id)
  end
end
