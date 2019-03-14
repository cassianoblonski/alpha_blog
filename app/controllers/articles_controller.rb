class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
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

  def update
    @article = Article.find(params[:id])
    # if params[:title].nil?
    #   flash[:notice] = "Article title is nil"
    #   render 'edit'
    if @article.update(article_params)
      flash[:notice] = "Article was sucessfully updated"
      redirect_to article_path(@article)
    else
      render 'edit' # same as render :edit
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:notice] = "Article was sucessfully deleted"
    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :description)
    end


end
