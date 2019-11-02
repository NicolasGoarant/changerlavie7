class ArticlesController < ApplicationController
 before_action :set_newspaper

  def show
  end

  def index
    @articles = Article.all
    @articles = Article.geocoded #returns flats with coordinates

    @markers = @articles.map do |article|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
  end

  def destroy
    @article.destroy
    redirect_to newspapers_path
  end

  def set_newspaper
    @newspaper = Newspaper.find(params[:newspaper_id])
    @article = Article.find(params[:id])
  end
end
