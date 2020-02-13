class LibrariesController < ApplicationController

  def create
    if current_user.library_ids.empty?
      @library = Library.new
      @library.user = current_user
      @library.save
    else
      @library = current_user.library_ids
    end
  redirect_to newspapers_path
  end

  def update

    @library = Library.find(params[:id])
    @library.update(article_id: @article)
    @library.save

  redirect_to admin_article_library_path(@library)

  end

  def show
    @library = current_user.library_ids
    @articles = Article.geocoded.where(status: "approved", library_id: @library)
    @markers = @articles.as_json(only:[:id, :title, :latitude, :longitude], methods: [:properties])
  end

  private

end
