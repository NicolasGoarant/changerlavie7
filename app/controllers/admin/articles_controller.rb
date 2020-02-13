class Admin::ArticlesController < ApplicationController
  layout "/admin/application"
  before_action :user_is_admin
  before_action :set_library

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
      if @article.save
        redirect_to edit_admin_article_path(@article), notice: "Article sauvegardé avec succès."
      else
        render :new
      end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def show
    @article = Article.find(params[:id])
    @articles = Article.geocoded.where(id: @article)
    @markers = @articles.as_json(only: [:longitude, :latitude])
  end

  def index
    @articles = Article.order("publication DESC").page(params[:page])
    @markers = @articles.as_json(only: [:longitude, :latitude])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to admin_articles_path, notice: "Article supprimé"
  end

  def update
    @article = Article.find(params[:id])
    @library.update(article_id: @article)
    @library.save

  redirect_to admin_library_path(@library)
  end



  private

  def article_params
    params.require(:article).permit(:title, :newspaper_id, :summary, :photo, :media, :content, :address, :engagement, :publication, :auteur, :status)
  end

  def user_is_admin
   @user = current_user

    if @user.email != "nicolas.goarant@gmail.com"
    redirect_to newspapers_path
    end
  end

  def set_library
    @library = current_user.library_ids
  end
end
