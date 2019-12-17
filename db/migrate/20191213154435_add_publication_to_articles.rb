class AddPublicationToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :publication, :date
  end
end
