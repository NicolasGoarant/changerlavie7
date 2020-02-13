class NewspapersController < ApplicationController
  before_action :set_library

  def index
    @articles = Article.geocoded.order("publication DESC")
    @markers = @articles.as_json(only:[:id, :title, :latitude, :longitude], methods: [:properties])
  end

  def show
    @newspaper = Newspaper.find(params[:id])
    @articles = Article.geocoded.order("publication DESC")
    @markers = @articles.as_json(only:[:id, :title, :latitude, :longitude], methods: [:properties])
  end

  def set_library
        @library = Library.new
        @user = current_user
        @library.user_id = @user
        @library.save
  end
end
