class NewspapersController < ApplicationController
  def index
    @newspapers = Newspaper.all
  end

  def show
    @newspaper = Newspaper.new
  end
end
