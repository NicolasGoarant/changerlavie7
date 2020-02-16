class ArticlesController < ApplicationController
  layout "/application"
  before_action :set_library

  #   def create
  #   #  @article = Article.new(article_params)
  #   # if @article.save
  #   #   redirect_to newspapers_path, notice: "Article sauvegardé avec succès."
  #   # else
  #   #   render :new
  #   # end

  #           @article = Article.find(params[:id])
  #   @article_modified = Article.new
  #   @article_modified = @article
  #   @article_modified_library_id = @library
  #   @article.save
  #   redirect_to library_path(@library)
  # end

  def new
    @user = current_user
    if @user.email != "nicolas.goarant@gmail.com"
    redirect_to newspapers_path
    end
    @article = Article.new
  end

  def update
    @article = Article.find(params[:id])
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
    @article = Article.find(params[:id])
    @articles = Article.geocoded.where(id: @article)
    @markers = @articles.as_json(only:[:id, :summary, :title, :latitude, :longitude], methods: [:properties])
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
