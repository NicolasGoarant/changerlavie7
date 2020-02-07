class LibrariesController < ApplicationController

  def create_library
    @user = current_user
    @library = @user.libraries.build
    @library.user = @user
    @library.save

    redirect_to newspapers_path
  end

  def show
    @articles = Article.geocoded.where(status: "approved")
    @markers = @articles.as_json(only:[:id, :title, :latitude, :longitude], methods: [:properties])
  end

  def update
    if @article.status == "ouvert"
     @article.update(status: "approved")
    else
      @article.update(status: "ouvert")
    end
  @article.save
  redirect_to admin_library_path(1)
  end

end
