class ArticlesController < ApplicationController
 before_action :set_newspaper

  def show
  end

  def index
    @articles = Article.geocoded
    @markers = @articles.map { |a| { lat: a.longitude, lng: a.latitude } }
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