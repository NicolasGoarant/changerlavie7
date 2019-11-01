class AddParagraphe2ToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :Paragraphe2, :string
  end
end
