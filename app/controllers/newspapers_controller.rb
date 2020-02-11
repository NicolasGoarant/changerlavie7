class NewspapersController < ApplicationController

  def index
      if current_user.library_ids.empty?
        @library = Library.new
        @library.user = current_user
        @library.save
      else
        @library = current_user.library_ids
      end
    flash[:notice] = "Article ajouté ! Merci !"
    @articles = Article.geocoded.order("publication DESC")
    @markers = @articles.as_json(only:[:id, :title, :latitude, :longitude], methods: [:properties])
  end

  def show
    @library = current_user.library_ids

    flash[:notice] = "Article ajouté ! Merci !"
    @newspaper = Newspaper.find(params[:id])
    @articles = Article.geocoded.order("publication DESC")
    @markers = @articles.as_json(only:[:id, :title, :latitude, :longitude], methods: [:properties])
  end

end
