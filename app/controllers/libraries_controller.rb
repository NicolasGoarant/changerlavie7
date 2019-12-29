class LibrariesController < ApplicationController
  before_action :set_library

  def show
      if @article.status == "ouvert"
       @article.update(status: "approved")
      else
        @article.update(status: "ouvert")
      end
    @article.save
    @articles = Article.geocoded.where(status: "approved")
    @markers = @articles.as_json(only:[:id, :title, :latitude, :longitude], methods: [:properties])
  end

  def update
    @article.update(status: "approved")
    @article.save
    redirect_to library_path(@library)
  end

  def set_library
    @article = Article.find(params[:id])
    @library = @article.library
    @user = current_user
  end


end
