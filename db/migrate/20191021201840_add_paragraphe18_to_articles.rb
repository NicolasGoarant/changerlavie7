class AddParagraphe18ToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :Paragraphe18, :string
  end
end
