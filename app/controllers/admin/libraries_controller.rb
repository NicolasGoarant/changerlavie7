class Admin::LibrariesController < ApplicationController
  before_action :set_library

  def show
    @articles = Article.geocoded.where(library_id: @library)
    @markers = @articles.as_json(only:[:id, :title, :latitude, :longitude], methods: [:properties])
  end

  def update
    @article = Article.find(params[:article_id])
    @library = Library.find(params[:id])
    @library.update(article_id: @article)

  redirect_to admin_article_library_path(@library)
  end


  private

  def set_library
     @library = current_user.library_ids
  end
end

