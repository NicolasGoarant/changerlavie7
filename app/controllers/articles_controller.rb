class ArticlesController < ApplicationController
  layout "/application"
  # before_action :user_is_admin
  before_action :set_library

  def update
    if @article.library_id == nil
      @article.update(library_id: @library[0])
      @article.save
    else
      @article.update(library_id: nil)
      @article.save
    end

    redirect_to library_path(@library)
  end

  def edit
  end

  def show
    # @articles = Article.geocoded.where(id: @article)
    @markers = @articles.as_json(only:[:id, :summary, :title, :latitude, :longitude], methods: [:properties])
  end

  def index
    @articles = Article.geocoded
    @markers = @articles.map { |a| { lat: a.longitude, lng: a.latitude } }
  end

  def destroy
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
    @article = Article.find(params[:id])
    @library = current_user.library_ids
  end
end
