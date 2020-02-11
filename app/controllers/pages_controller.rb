class PagesController < ApplicationController
  def contact
  end

  def about
    @library = current_user.library_ids
  end
end
