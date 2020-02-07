class Admin::LibrariesController < ApplicationController
  before_action :set_library

  def show
    @article.update(status: "approved")
    @articles = Article.where(status: "approved")

    @articles = Article.geocoded.where(status: "approved")
    @markers = @articles.as_json(only:[:id, :title, :latitude, :longitude], methods: [:properties])
  end

  def index
  end

  def update
    if @article.status == "ouvert"
     @article.update(status: "approved")
    else
      @article.update(status: "ouvert")
    end
  @article.save
  redirect_to admin_library_path(1)
  end

  def set_library
    @user = current_user
    @article = Article.find(params[:id])
    @library = @article.library
    @user = current_user
  end
end

