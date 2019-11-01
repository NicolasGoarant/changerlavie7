class AddParagraphe10ToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :Paragraphe10, :string
  end
end
