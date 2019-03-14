class ArticlesController < ApplicationController


  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      # flash => show only 1 time, if the page got refreshed the msg goes away
      flash[:notice] = "Article was sucessfully created"
      redirect_to article_path(@article)
    else
      render 'new' #or render :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private
    def article_params
      params.require(:article).permit(:title, :description)
    end


end
