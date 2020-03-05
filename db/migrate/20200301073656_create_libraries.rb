class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.timestamps

      t.belongs_to :user, index: { unique: true }, foreign_key: true
      t.belongs_to :article, foreign_key: true
    end
  end
end
