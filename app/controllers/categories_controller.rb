class CategoriesController < ApplicationController
  def index
    render json: Category.all
  end

  def show
    render json: {
      category: Category.find(params[:id])
    }
  end

  def create
    render json: Category.create(category_params)
  end


  def update
    Category.find(params[:id]).update(category_params)
    render json: Category.find(params[:id])
  end

  def destroy
    render json: Category.find(params[:id]).destroy
  end

  private
  def category_params
    params.require(:category).permit(:name,:type_name)
  end
end
