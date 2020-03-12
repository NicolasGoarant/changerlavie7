class AddNewspaperToArchives < ActiveRecord::Migration[5.2]
  def change
    add_reference :archives, :newspaper, foreign_key: true
  end
end
