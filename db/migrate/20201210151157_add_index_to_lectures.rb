class AddIndexToLectures < ActiveRecord::Migration[5.2]
  def change
    add_index :lectures, :title, unique: true
  end
end
