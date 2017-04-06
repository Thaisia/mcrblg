class ArticlesController < ApplicationController
  before_filter :authenticate_user!, :only =>[:new, :create]

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

    if @article.valid?
      @article.save
      redirect_to @article
    else
      render action: 'new'
    end

  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :user_id).merge(user_id: current_user.id)
  end

end
