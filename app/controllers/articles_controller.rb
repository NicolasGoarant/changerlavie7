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
    if @article.library_ids.include?(@user.library.user[:id])
       @article.library_ids.delete(@user.library.user[:id])
    else
      @article.library_ids.push(@user.library.user[:id])
    end

    @article.update(library_ids: @article.library_ids)
    @article.save!

    redirect_to article_path(@article)

  end

  def edit
  end

  def show
    @markers = @article.as_json(only:[:id, :summary, :title, :latitude, :longitude], methods: [:properties])
  end

  # def index
  #   @articles = Article.geocoded
  #   @markers = @articles.map { |a| { lat: a.longitude, lng: a.latitude } }
  # end

  def destroy
    @article.destroy
    redirect_to newspapers_path
  end


  private

  def article_params
    params.require(:article).permit(:title, :newspaper_id, :summary, :photo, :media, :content, :address, :engagement, :publication, :auteur, :status)
  end

  def set_library
    @user = current_user
    @article = Article.find(params[:id])
  end
end
