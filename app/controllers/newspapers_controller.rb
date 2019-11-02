class NewspapersController < ApplicationController
  def show
    @newspaper = Newspaper.find(params[:id])
  end

  def index
    @articles = Article.all

    @articles = Article.geocoded

    @markers = @articles.map do |article|
      {
        lat: article.latitude,
        lng: article.longitude
      }
    end
  end
end
