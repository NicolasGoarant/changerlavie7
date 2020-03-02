class AddArticleToLibraries < ActiveRecord::Migration[5.2]
  def change
    add_reference :libraries, :article, foreign_key: true
  end
end
