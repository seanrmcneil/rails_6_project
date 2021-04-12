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
    @article = Article.new(params.require(:article).permit(:title, :description))
    @article.save
    redirect_to @article
  end

end