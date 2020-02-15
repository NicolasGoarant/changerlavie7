class LibrariesController < ApplicationController

  def create
    @user = current_user
    if @user.library_ids.empty?
       @library = Library.new
    @library.user = @user
    @library.save
    end

    redirect_to newspapers_path
  end

  def show
    @library = current_user.library_ids
    @articles = Article.geocoded.where(library_id: @library)
    @markers = @articles.as_json(only:[:id, :title, :latitude, :longitude], methods: [:properties])
  end

  def update
    @article = Article.find(params[:id])
    @library = Library.find(params[:library_id])
    @article.update
    @article.save

    redirect_to library_path(@library)

  end
end
