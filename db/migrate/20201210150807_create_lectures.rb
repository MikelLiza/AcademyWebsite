class CreateLectures < ActiveRecord::Migration[5.2]
  def change
    create_table :lectures do |t|
      t.string :title
      t.float :weekly_hours
      t.text :description

      t.timestamps
    end
  end
end
