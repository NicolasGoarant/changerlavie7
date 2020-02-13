class NewspapersController < ApplicationController
  before_action :set_library

  def create
  @library = current_user.library_ids
    if @library.empty?
       @library = Library.new
       @library.user = current_user
       @library.save
    else
      @library = current_user.library_ids

    end
  redirect_to newspapers_path

  end

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
    @library = current_user.library_ids
  end
end
