class AddParagraphe16ToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :Paragraphe16, :string
  end
end
