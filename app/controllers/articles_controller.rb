# frozen_string_literal: true

##
# Articles controller
#
class ArticlesController < ApplicationController
  def index
    @articles = Article.all.order(:created_at)
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    @article.save

    redirect_to article_path(@article.id)
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    redirect_to article_path(@article.id)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.delete

    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :category, :photo)
  end
end
