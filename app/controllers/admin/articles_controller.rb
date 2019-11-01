class Admin::ArticlesController < ApplicationController
 before_action :set_library

  def show
    @myarticle = Article.find(params[:id])
    @myarticle.save
  end

  def index
    @myarticle
  end

  def destroy
    @article.destroy
    redirect_to newspapers_path
  end

  def set_library
    @library = Library.find(params[:library_id])
  end
end
