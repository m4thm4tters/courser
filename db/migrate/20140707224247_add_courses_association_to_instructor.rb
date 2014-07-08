class AddCoursesAssociationToInstructor < ActiveRecord::Migration
  def self.up
    add_column :courses, :instructor_id, :integer
    add_index 'courses', ['instructor_id'], :name => 'index_instructor_id' 
  end

  def self.down
    remove_column :courses, :instructor_id
  end
end
