class AddUserToLibraries < ActiveRecord::Migration[5.2]
  def change
    add_reference :libraries, :user, foreign_key: true
  end
end
