class AddParagraphe9ToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :Paragraphe9, :string
  end
end
