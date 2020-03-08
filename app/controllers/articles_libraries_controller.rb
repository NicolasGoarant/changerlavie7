class ArticlesLibrariesController < ApplicationController
  def create
    @user = current_user
    @library = @user.library[:id]
    @article = Article.find(params[:article_id])
    # @article_library = ArticlesLibrary.find(params[:id])
      if @article.library_ids.exclude?(@library)
         @user.library.articles_libraries.create(article_id: @article[:id])
      end
    # @user.save!

    redirect_to library_path(@library)
  end

  def destroy
    @user = current_user
    @library = @user.library[:id]
    @article = Article.find(params[:article_id])
    @al = ArticlesLibrary.find(params[:id])
    @al.destroy

    redirect_to library_path(@library)
  end

end
