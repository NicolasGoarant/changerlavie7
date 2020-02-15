class ArticlesController < ApplicationController
  layout "/application"
  before_action :user_is_admin
  before_action :set_library

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
      if @article.save
        redirect_to edit_article_path(@article), notice: "Article sauvegardé avec succès."
      else
        render :new
      end
  end

  def update
    @article = Article.find(params[:id])
    @library = Library.find(params[:library_id])
    @article.library_id = 1
    @article.save

    redirect_to library_path(@library)
  end

  def edit
    @article = Article.find(params[:id])
  end

  def show

    @article = Article.find(params[:id])
    # @articles = Article.geocoded.where(id: @article)
    @markers = @articles.as_json(only:[:id, :title, :latitude, :longitude], methods: [:properties])
  end

  def index
    @article = Article.find(params[:id])
    @articles = Article.geocoded
    @markers = @articles.map { |a| { lat: a.longitude, lng: a.latitude } }
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to newspapers_path
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
