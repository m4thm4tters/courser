class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :section
      t.string :semester
      t.integer :year

      t.timestamps
    end
  end
end
