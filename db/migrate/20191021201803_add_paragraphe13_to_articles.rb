class AddParagraphe13ToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :Paragraphe13, :string
  end
end
