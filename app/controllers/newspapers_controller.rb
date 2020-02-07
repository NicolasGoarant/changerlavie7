class NewspapersController < ApplicationController

  def index
    flash[:notice] = "Article ajouté ! Merci !"
    @articles = Article.geocoded.order("publication DESC")
    @markers = @articles.as_json(only:[:id, :title, :latitude, :longitude], methods: [:properties])
  end

  def show
    flash[:notice] = "Article ajouté ! Merci !"
    @newspaper = Newspaper.find(params[:id])
    @articles = Article.geocoded.order("publication DESC")
    @markers = @articles.as_json(only:[:id, :title, :latitude, :longitude], methods: [:properties])
  end
end
