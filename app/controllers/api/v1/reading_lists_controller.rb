class Api::V1::ReadingListsController < ApplicationController
  def index
    render json: ReadingList.all
  end

  def show
    render json: {
      reading_list: ReadingList.find(params[:id])
    }
  end

  def create
    render json: ReadingList.create(reading_list_params)
  end


  def update
    ReadingList.find(params[:id]).update(reading_list_params)
    render json: ReadingList.find(params[:id])
  end

  def destroy
    render json: ReadingList.find(params[:id]).destroy
  end

  private
  def reading_list_params
    params.require(:reading_list).permit(:name)
  end
end
