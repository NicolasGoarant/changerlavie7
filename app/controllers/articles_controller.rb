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
    if @article.users.include?(@user)
       @article.users.delete(@user)
    else
       @article.users.push(@user)
    end
    @article.save!
    redirect_to article_path(@article)
  end


  def edit
  end

  def show
    @library = current_user.library
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
