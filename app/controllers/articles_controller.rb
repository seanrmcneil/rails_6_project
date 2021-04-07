class ArticlesController < ApplicationController
  def show 
    id = params[:id]
    @article = Article.find(id)
  end

  def index 
    @articles = Article.all
  end

  def new
  end

  def create
    render plain: params[:article]
  end

end