class CountriesController < ApplicationController
  def index
    render json: Country.all
  end

  def show
    render json: {
      country: Country.find(params[:id])
    }
  end

  def create
    render json: Country.create(country_params)
  end


  def update
    Country.find(params[:id]).update(country_params)
    render json: Country.find(params[:id])
  end

  def destroy
    render json: Country.find(params[:id]).destroy
  end

  private
  def country_params
    params.require(:country).permit(:name,:code)
  end
end
