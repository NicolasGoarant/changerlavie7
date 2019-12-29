class NewspapersController < ApplicationController
  def show
    @newspaper = Newspaper.find(params[:id])
    @user = current_user
    @articles = Article.geocoded.order("publication DESC")
    @markers = @articles.as_json(only:[:id, :title, :latitude, :longitude], methods: [:properties])
  end

  def index
    @articles = Article.geocoded.order("publication DESC")
    @markers = @articles.as_json(only:[:id, :title, :latitude, :longitude], methods: [:properties])
  end
end
