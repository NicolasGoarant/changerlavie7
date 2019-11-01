class AddParagraphe1ToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :Paragraphe1, :string
  end
end
