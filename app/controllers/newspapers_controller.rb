class NewspapersController < ApplicationController

  def index
    @articles = Article.geocoded.order("publication DESC")
    @markers = @articles.as_json(only:[:id, :summary, :title, :latitude, :longitude], methods: [:properties])
  end

  def show
    @articles = Article.geocoded.order("publication DESC")
    @markers = @articles.as_json(only:[:id, :summary, :title, :latitude, :longitude], methods: [:properties])
  end
end
