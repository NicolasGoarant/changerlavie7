class AddParagraphe17ToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :Paragraphe17, :string
  end
end
