class NewspapersController < ApplicationController
  before_action :set_library

def index
  @articles = Article.geocoded.order("publication DESC")
  @markers = @articles.as_json(only:[:id, :summary, :title, :latitude, :longitude], methods: [:properties])
end

def show
  @articles = Article.geocoded.order("publication DESC")
  @markers = @articles.as_json(only:[:id, :summary, :title, :latitude, :longitude], methods: [:properties])
end

def set_library
  @library = current_user.library_ids
end

end
