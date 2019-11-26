class Admin::LibrariesController < ApplicationController
  before_action :set_library

  def show
    @article.update(status: "approved")
    @articles = Article.where(status: "approved")
  end

  def index
  end

  def set_library
    @article = Article.find(params[:id])
    @library = @article.library
    @user = current_user
  end
end

