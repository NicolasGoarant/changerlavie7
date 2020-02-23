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

  def update
    @article = Article.find(params[:id])
    @array = []
    @array = @article.library_ids
      if   @array.empty?
           @array << 3

      else @array.each do |library|
              if library.to_i != @library[:id]
                @array << 3
              else  library.to_i == nil
              end
           end
      end
    @article.save
    redirect_to newspapers_path

  end

  def edit
  end

  def show
    @library = current_user
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

  def set_library
    @libraries = Library.where(user_id: current_user)
    @libraries.each do |library|
    @library = library
    end
  end
end
