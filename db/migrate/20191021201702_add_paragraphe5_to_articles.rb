class AddParagraphe5ToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :Paragraphe5, :string
  end
end
