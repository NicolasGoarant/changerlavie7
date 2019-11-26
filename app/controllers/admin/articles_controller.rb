class Admin::ArticlesController < ApplicationController
 before_action :set_library

  def show
    @article = Article.find(params[:id])

    # @article.update(status: "approved")
    # @article.save
    # @articles = Article.where(status: "approved")

    # flash[:notice] = 'Article ajouté'
    # redirect_to admin_library_articles_path(@library)
  end

  def index
    @articles = Article.geocoded.where(status: "approved")
    @markers = @articles.as_json(only: [:longitude, :latitude])

  end

  def destroy
    @article = Article.find(params[:id])
    @article.update(status: 'ouvert')
    @article.save
    redirect_to admin_library_path(@library)
  end

  def update
    @article = Article.find(params[:id])

    if @article.status == 'ouvert'
    @article.update(status: 'approved')
    @article.save
    flash[:notice] = 'Article ajouté'

    redirect_to admin_library_articles_path(@library)

    else
    @article.update(status: 'ouvert')
    @article.save

    flash[:notice] = 'Article supprimé'

    redirect_to admin_library_articles_path(@library)

    end
  end

  def set_library
    @library = Library.find(params[:library_id])
  end


end

