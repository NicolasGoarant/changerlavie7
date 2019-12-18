class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
    @articles = Article.geocoded.where(id: @article)
    @markers = @articles.as_json(only: [:longitude, :latitude])
  end

  def index
    @article = Article.find(params[:id])
    @articles = Article.geocoded
    @markers = @articles.map { |a| { lat: a.longitude, lng: a.latitude } }
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to newspapers_path
  end

  def new
   @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @newspaper = Newspaper.find(params[:newspaper_id])
    @article.newspaper = @newspaper
    @article.save
    flash[:notice] = "Article ajouté ! Merci !"
    redirect_to newspapers_path
  end

  def set_newspaper
    @newspaper = Newspaper.find(params[:newspaper_id])
  end


end
