class AddAuteurToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :auteur, :string
  end
end
