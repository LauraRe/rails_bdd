class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = 'Article was successfully created.'
      redirect_to @article
    else
      flash[:error] = "Title can't be blank!"
      render 'new'
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :content)
    end
end