class NewspapersController < ApplicationController
  def show
    @newspaper = Newspaper.find(params[:id])
  end

  def index
    @articles = Article.geocoded
    @markers = @articles.as_json(only: [:longitude, :latitude])
  end
end
