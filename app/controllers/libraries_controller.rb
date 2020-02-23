class LibrariesController < ApplicationController

  def create
    @user = current_user
    if @user.library_ids.empty?
        @library = Library.new
        @library.save
        @library.user_id = @user
        @library.save
        @user.save
        @user.update(library_ids: @user[:id])
        @user.save
    end

    redirect_to newspapers_path
  end

    def update
    @libraries_article = @article.libraries_ids


    redirect_to library_path(@library)
  end

  def show
    @library = current_user
    @articles = Article.geocoded
    @libraries = Library.all
    @library = @libraries.where(user_id: @user)
    # @markers = @articles.as_json(only:[:id, :summary, :title, :latitude, :longitude], methods: [:properties])
  end

end
