class PagesController < ApplicationController
  def contact
  end

  def about
    @library = current_user.library.id
  end
end
