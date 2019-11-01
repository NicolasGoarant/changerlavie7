class NewspapersController < ApplicationController
  def show
    @newspaper = Newspaper.find(params[:id])
  end

  def index
    @articles = Article.all
  end
end
