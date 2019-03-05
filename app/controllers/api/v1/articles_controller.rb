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
    @article = Article.new(article_params)
    if @article.valid?
      @article.save
      render json: @article
    end
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
    params.require(:article).permit(:title,:description,:article_url,:image_url,:country_id)
  end
end
