class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    #to display the passing info at articles/new
  #render plain: params[:article].inspect
    #@article = Article.new(article_params)
    #@article.save
        #redirect_to article_show(@article)
@article = Article.new(article_params)
    if @article.save
  flash[:notice] = "Article was sucessfully created"
  redirect_to article_path(@article)
      else
  render 'new'
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
