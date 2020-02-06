class NewspapersController < ApplicationController

  def index
    # d à chaque fois que le current_user arrive ici
    @library = Library.new
    @user = current_user
    @library.user = @user
    @library.save

    flash[:notice] = "Article ajouté ! Merci !"
    @articles = Article.geocoded.order("publication DESC")
    @markers = @articles.as_json(only:[:id, :title, :latitude, :longitude], methods: [:properties])
  end

  def show
    flash[:notice] = "Article ajouté ! Merci !"
    @newspaper = Newspaper.find(params[:id])
    @articles = Article.geocoded.order("publication DESC")
    @markers = @articles.as_json(only:[:id, :title, :latitude, :longitude], methods: [:properties])
  end
end

# def set_library
#     @user = current_user
#     @library = Library.new
#     @library.user = @user
#     @library.save
# end

  # def new
  #   # we need @restaurant in our `simple_form_for`
  #       @review = Review.new
  #   @restaurant = Restaurant.find(params[:restaurant_id])

  # end

  # def create
  #   @review = Review.new(review_params)
  #   # we need `restaurant_id` to associate review with corresponding restaurant
  #   @restaurant = Restaurant.find(params[:restaurant_id])
  #   @review.restaurant = @restaurant
  #   @review.save
  #   redirect_to restaurant_path(@restaurant)
  # end
