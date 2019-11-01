class Admin::LibrariesController < ApplicationController
  before_action :set_library

  def show
    @article = Article.find(params[:id])
    redirect_to admin_library_articles_path(@article.library, @article)
  end

  def index
  end

  def set_library
    @library = Library.find(params[:id])
  end

end


