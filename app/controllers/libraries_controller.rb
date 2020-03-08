class LibrariesController < ApplicationController

  def create
    @user = current_user
    if @user.library == nil
      @library = Library.new
      @library.user = @user
      @library.save!
      @user.update(library: @library[:id])
      @user.save!
    end

    @libraries = Library.where(user_id: current_user)

    @libraries.each do |library|
      @library = library
    end

    redirect_to newspapers_path
  end

  def show
    @user = current_user
    @array_articles = Array.new
    @user.library.articles_libraries.each do |article_library|
    @array_articles << article_library.article
    end

    @articles = Article.geocoded
    @markers = @articles.as_json(only:[:id, :summary, :title, :latitude, :longitude], methods: [:properties])
  end

end
