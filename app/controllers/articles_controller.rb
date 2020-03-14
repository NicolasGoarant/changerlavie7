class ArticlesController < ApplicationController
  layout "/application"
  before_action :set_library

  def new
    @library = current_user
    @user = current_user
    if @user.email != "nicolas.goarant@gmail.com"
      redirect_to newspapers_path
    end
    @article = Article.new
  end

  def edit
  end

  def show
    @article = Article.find(params[:id])
    @library = @user.library
    @articles = Article.geocoded.where(id: @article)
    @markers = @articles.as_json(only:[:id, :summary, :title, :latitude, :longitude], methods: [:properties])

    @user.library.articles_libraries.each do |article_library|
        if article_library.article = @article
        @article_library = article_library[:id]
        end
        @essai = article_library.article[:id]
    end
  end

  # def index
  #   @articles = Article.geocoded
  #   @markers = @articles.map { |a| { lat: a.longitude, lng: a.latitude } }
  # end

  def destroy
        @article = Article.find(params[:id])
    @article.destroy
    redirect_to newspapers_path
  end


  private

  def article_params
    params.require(:article).permit(:title, :newspaper_id, :summary, :photo, :media, :content, :address, :engagement, :publication, :auteur, :status)
  end

  def set_library
    @user = current_user
  end
end
