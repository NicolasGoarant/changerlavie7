class Admin::LibrariesController < ApplicationController
  before_action :set_library

  def show
    @article = Article.find([:id])
    redirect_to admin_library_articles_path(@article.library, @article)
  end

  def index
  end

  def set_library
    @library = Library.find(params[:library_id])
  end

end


