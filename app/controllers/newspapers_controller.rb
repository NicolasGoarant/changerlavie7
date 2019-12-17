class NewspapersController < ApplicationController
  def show
    @newspaper = Newspaper.find(params[:id])
    @user = current_user
    @articles = Article.geocoded
    @markers = @articles.as_json(only: [:longitude, :latitude])
  end

  def index
    @articles = Article.geocoded.order("publication DESC")
    @markers = @articles.as_json(only: [:longitude, :latitude])
  end
end
