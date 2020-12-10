class CreateLectures < ActiveRecord::Migration[5.2]
  def change
    create_table :lectures do |t|
      t.string :title, null: false
      t.float :weekly_hours, null: false
      t.text :description

      t.timestamps
    end
  end
end
