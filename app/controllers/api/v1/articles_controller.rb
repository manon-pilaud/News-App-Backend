class Api::V1::ArticlesController < ApplicationController
  def index
    render json: Article.all
  end

  def show
    render json: {
      article: Article.find(params[:id])
    }
  end

  def create
    render json: Article.create(article_params)
  end

  def update
    Article.find(params[:id]).update(article_params)
    render json: Article.find(params[:id])
  end

  def destroy
    render json: Article.find(params[:id]).destroy
  end

  private
  def article_params
    params.require(:article).permit(:title,:source,:article_url)
  end
end
