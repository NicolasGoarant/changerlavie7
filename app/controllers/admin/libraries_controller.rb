class Admin::LibrariesController < ApplicationController
  before_action :set_library

  def show
  end

  def index
  end

  def set_library
    @library = Library.find(params[:id])
  end
end

