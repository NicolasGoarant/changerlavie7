class AddParagraphe6ToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :Paragraphe6, :string
  end
end
