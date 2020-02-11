class Admin::LibrariesController < ApplicationController
  before_action :set_library

  def show

    @articles = Article.where(status: "approved")

    @articles = Article.geocoded.where(status: "approved")
    @markers = @articles.as_json(only:[:id, :title, :latitude, :longitude], methods: [:properties])
  end

  def update
      @article = Article.find(params[:id])
    if @article.status == "ouvert"
     @article.update(status: "approved")
    else
      @article.update(status: "ouvert")
    end
  @article.save
  redirect_to admin_library_path(@library)
  end

  private

  def set_library
     @library = current_user.library_ids
  end
end

