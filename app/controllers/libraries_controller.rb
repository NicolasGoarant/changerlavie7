class LibrariesController < ApplicationController

  def create
    @user = current_user
    if @user.library_ids.empty?
        @library = Library.new
        @library.user_id = @user
        @library.save!
        @user.update(library_ids: @library[:id])
    end

    @libraries = Library.where(user_id: current_user)
    @libraries.each do |library|
    @library = library
    end

    redirect_to newspapers_path
  end

  def show
    @libraries = Library.where(user_id: current_user)
    @libraries.each do |library|
    @library = library
    end

    @articles = Article.geocoded.all
    # @array_articles = Array.new
    # @array_articles = @library.article_ids
    # @articles.each do |article|
    #   if article.library_ids.include?(@library[:id])
    #      @array_articles.push(article[:id])
    #      @library.update(article_ids: @array_articles)
    #      @library.save!
    #   end
    # end
    @markers = @articles.as_json(only:[:id, :summary, :title, :latitude, :longitude], methods: [:properties])
  end

end
