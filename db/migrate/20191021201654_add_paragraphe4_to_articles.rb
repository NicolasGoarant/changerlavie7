class AddParagraphe4ToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :Paragraphe4, :string
  end
end
