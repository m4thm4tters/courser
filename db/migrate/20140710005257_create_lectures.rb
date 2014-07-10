class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :title
      t.string :section
      t.date :date
      t.integer :course_id

      t.timestamps
    end
  end
end
