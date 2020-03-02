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

    if @article.user_ids.exclude?(@user[:id])
       @article.user_ids.push(@user[:id])
    else
      @article.user_ids.delete(@user[:id])
    end


    @article.update(user_ids: @article.user_ids)

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

    @libraries = Library.where(user_id: current_user)
    @libraries.each do |library|
    @library = library
    end
  end
end
