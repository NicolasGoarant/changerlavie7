class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :summary
      t.string :photo
      t.string :media
      t.string :content

      t.string :city
      t.string :address
      t.string :auteur
      t.string :engagement
      t.string :place
      t.string :publication


      t.references :library, index: true, foreign_key: true
      t.references :newspaper, index: true, foreign_key: true

      t.timestamps
    end
  end
end
