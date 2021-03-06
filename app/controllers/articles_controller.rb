class ArticlesController < ApplicationController
  def new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.body = params[:body]
    @article.save
    redirect_to article_path(@article.id)
  end

  def show
    @current_article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end
end
